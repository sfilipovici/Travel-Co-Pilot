import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:travel_copilot/features/plan/presentation/widgets/day_section.dart';

/// Page that shows the currently active itinerary, with days and activities
class ItineraryPage extends ConsumerStatefulWidget {
  const ItineraryPage({super.key});

  @override
  ConsumerState<ItineraryPage> createState() => _ItineraryPageState();
}

class _ItineraryPageState extends ConsumerState<ItineraryPage> {
  int? expandedDay;

  @override
  Widget build(BuildContext context) {
    final tripAsync = ref.watch(activeTripProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Itinerary')),
      body: tripAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (trip) {
          if (trip == null) {
            return const Center(
              child: Text(
                'No active itinerary yet. Generate one in the Plan tab.',
              ),
            );
          }

          if (trip.days.isEmpty) {
            return const Center(
              child: Text('Itinerary is being prepared... Please wait.'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: trip.days.length,
            itemBuilder: (context, index) {
              final day = trip.days[index];
              return DaySection(
                dayNumber: day.day,
                blocks: day.blocks,
                isExpanded: expandedDay == index,
                onToggle: () {
                  setState(() {
                    expandedDay = expandedDay == index ? null : index;
                  });
                },
              );
            },
          );
        },
      ),
    );
  }
}
