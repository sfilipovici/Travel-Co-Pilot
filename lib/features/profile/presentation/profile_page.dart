import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:travel_copilot/features/trip/presentation/plan_controller.dart';

final _allTripsProvider = FutureProvider<List<Trip>>((ref) {
  final repo = ref.watch(tripRepositoryProvider);
  return repo.getAll();
});

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsAsync = ref.watch(_allTripsProvider);
    final planCtrl = ref.watch(planControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // --- User info mockup ---
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 3,
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF6C63FF),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                'Traveler',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('user@example.com'),
            ),
          ),
          const SizedBox(height: 24),

          const Text(
            'Your Itineraries',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          tripsAsync.when(
            loading: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            error: (err, st) => Text('Failed to load itineraries: $err'),
            data: (trips) {
              if (trips.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text('No itineraries yet. Create one from Plan tab.'),
                );
              }

              return Column(
                children: trips.map((trip) {
                  final isActive = trip.isActive;
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              backgroundColor: isActive
                                  ? const Color(0xFF6C63FF)
                                  : Colors.grey,
                              child: const Icon(
                                Icons.flight_takeoff,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(
                              trip.city,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${trip.startDate?.toLocal().toString().split(' ')[0]} • ${trip.days.length} days',
                                ),
                                if (trip.budgetAmount != null &&
                                    trip.currency != null)
                                  Text(
                                    'Budget: ${trip.budgetAmount} ${trip.currency}',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                if (trip.categories.isNotEmpty)
                                  Wrap(
                                    spacing: 6,
                                    children: trip.categories
                                        .map(
                                          (c) => Chip(
                                            label: Text(c),
                                            backgroundColor:
                                                Colors.grey.shade200,
                                          ),
                                        )
                                        .toList(),
                                  ),
                              ],
                            ),
                          ),

                          // ✅ Show active label or Activate button
                          if (isActive)
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Active itinerary',
                                style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          else
                            Align(
                              alignment: Alignment.centerRight,
                              child: OutlinedButton.icon(
                                onPressed: () async {
                                  await planCtrl.activateTrip(trip.id);
                                  // refresh both Profile and Itinerary
                                  ref.invalidate(_allTripsProvider);
                                  ref.invalidate(activeTripProvider);

                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Activated itinerary: ${trip.city}',
                                        ),
                                      ),
                                    );
                                  }
                                },
                                icon: const Icon(Icons.check_circle_outline),
                                label: const Text('Activate'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xFF6C63FF),
                                  side: const BorderSide(
                                    color: Color(0xFF6C63FF),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
