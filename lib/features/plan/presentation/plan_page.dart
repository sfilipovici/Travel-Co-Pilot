import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart'; // ✅ needed for context.push
import 'package:travel_copilot/features/plan/presentation/widgets/day_section.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

/// Local provider for the active trip (avoids depending on any external symbol).
final _activeTripProvider = FutureProvider<Trip>((ref) {
  final repo = ref.watch(tripRepositoryProvider);
  return repo.getActive();
});

class PlanPage extends ConsumerStatefulWidget {
  const PlanPage({super.key});

  @override
  ConsumerState<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends ConsumerState<PlanPage> {
  int? expandedDayIndex;

  @override
  Widget build(BuildContext context) {
    final tripAsync = ref.watch(_activeTripProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Plan')),
      body: tripAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) {
          if (err.toString().contains('No active trip')) {
            return const _NoTripPlaceholder();
          }
          return Center(child: Text('Failed to load trip: $err'));
        },
        data: (trip) {
          if (trip.days.isEmpty) {
            return const _NoTripPlaceholder();
          }
          return ListView.builder(
            itemCount: trip.days.length,
            itemBuilder: (context, dayIndex) {
              final day = trip.days[dayIndex];
              return DaySection(
                dayNumber: day.day,
                blocks: day.blocks,
                isExpanded: expandedDayIndex == dayIndex,
                onToggle: () {
                  setState(() {
                    expandedDayIndex =
                        expandedDayIndex == dayIndex ? null : dayIndex;
                  });
                },
                onReplace: (blockIndex, alt) async {
                  final repo = ref.read(tripRepositoryProvider);
                  final updatedDays = [...trip.days];
                  final updatedBlocks = [...day.blocks];
                  updatedBlocks[blockIndex] = alt;
                  updatedDays[dayIndex] =
                      TripDay(day: day.day, blocks: updatedBlocks);

                  final updatedTrip = Trip(
                    id: trip.id,
                    city: trip.city,
                    startDate: trip.startDate,
                    days: updatedDays,
                    summaryTips: trip.summaryTips,
                  );

                  await repo.save(updatedTrip);
                  ref.invalidate(_activeTripProvider);
                },
                onReorder: (int oldIndex, int newIndex) async {
                  final repo = ref.read(tripRepositoryProvider);
                  final updatedDays = [...trip.days];
                  final reorderedBlocks = [...day.blocks];

                  if (newIndex > oldIndex) newIndex -= 1;
                  final item = reorderedBlocks.removeAt(oldIndex);
                  reorderedBlocks.insert(newIndex, item);

                  updatedDays[dayIndex] =
                      TripDay(day: day.day, blocks: reorderedBlocks);

                  final updatedTrip = Trip(
                    id: trip.id,
                    city: trip.city,
                    startDate: trip.startDate,
                    days: updatedDays,
                    summaryTips: trip.summaryTips,
                  );

                  await repo.save(updatedTrip);
                  ref.invalidate(_activeTripProvider);
                },
              );
            },
          );
        },
      ),
    );
  }
}

/// ✅ Define this at the top-level, not inside another class
class _NoTripPlaceholder extends StatelessWidget {
  const _NoTripPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.airplane_ticket_outlined,
                size: 72, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              'No trips yet',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'You don’t have any trips saved. Start by generating your first AI-powered itinerary!',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              icon: const Icon(Icons.auto_awesome),
              label: const Text('Plan a New Trip'),
              onPressed: () {
                context.push('/onboarding');
              },
            ),
          ],
        ),
      ),
    );
  }
}
