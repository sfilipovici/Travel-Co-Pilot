import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:travel_copilot/features/plan/presentation/widgets/activity_card.dart';

class ItineraryPage extends ConsumerWidget {
  const ItineraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripAsync = ref.watch(activeTripProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Itinerary')),
      body: tripAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
        data: (trip) {
          if (trip == null) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text(
                  'No active itinerary.\nPlease activate one from Profile → My Itineraries.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
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
            itemCount: trip.days.length + 1, // +1 for trip header
            itemBuilder: (context, index) {
              if (index == 0) {
                // Trip header card
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.only(bottom: 24),
                  child: ListTile(
                    leading: const Icon(
                      Icons.flight_takeoff,
                      color: Color(0xFF6C63FF),
                    ),
                    title: Text(
                      trip.city,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: trip.startDate != null && trip.endDate != null
                        ? Text(
                            '${trip.startDate!.day} ${DateFormat.MMM().format(trip.startDate!)} '
                            '– ${trip.endDate!.day} ${DateFormat.MMM().format(trip.endDate!)} '
                            '(${trip.days.length} days)',
                          )
                        : Text('${trip.days.length} days'),
                  ),
                );
              }

              // Days (index - 1 because of header)
              final day = trip.days[index - 1];
              final dayColor =
                  Colors.primaries[(index - 1) % Colors.primaries.length];

              // Group activities by time of day
              final grouped = <String, List<TripBlock>>{};
              for (final block in day.blocks) {
                final timeOfDay = block.time ?? "Other";
                grouped.putIfAbsent(timeOfDay, () => []).add(block);
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Day header
                    Text(
                      "Day ${day.day}",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: dayColor.shade700,
                          ),
                    ),
                    const SizedBox(height: 12),

                    // Activities grouped by time
                    ...grouped.entries.map((entry) {
                      final label = entry.key;
                      final activities = entry.value;

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: dayColor.shade600,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Column(
                              children: List.generate(activities.length, (i) {
                                final block = activities[i];
                                final isLast = i == activities.length - 1;

                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: dayColor,
                                          ),
                                        ),
                                        if (!isLast)
                                          Container(
                                            width: 2,
                                            height: 80,
                                            color: dayColor.withOpacity(0.5),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(child: ActivityCard(block: block)),
                                  ],
                                );
                              }),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
