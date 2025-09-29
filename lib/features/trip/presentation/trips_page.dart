import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:travel_copilot/features/trip/presentation/plan_controller.dart';
import 'package:intl/intl.dart';

final _allTripsProvider = FutureProvider<List<Trip>>((ref) {
  final repo = ref.watch(tripRepositoryProvider);
  return repo.getAll(); // ✅ fetch ALL trips, not just active
});

class TripsPage extends ConsumerWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsAsync = ref.watch(_allTripsProvider);
    final planCtrl = ref.watch(planControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('My Itineraries')),
      body: tripsAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (err, st) => Center(child: Text('Failed to load: $err')),
        data: (trips) {
          if (trips.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Text('No itineraries yet. Create one from Plan tab.'),
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: trips.length,
            itemBuilder: (context, i) {
              final trip = trips[i];
              final isActive = trip.isActive;

              // ✅ Compute proper date range
              final start = trip.startDate;
              final durationDays = trip.days.length;
              final end = start?.add(Duration(days: durationDays - 1));

              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
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
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (trip.startDate != null && trip.endDate != null) ...[
                        Text(
                          '${trip.startDate!.day}-${trip.endDate!.day} '
                          '${DateFormat.MMM().format(trip.startDate!)} '
                          '${trip.startDate!.year} • ${trip.days.length} days',
                        ),
                      ] else ...[
                        Text('${trip.days.length} days'),
                      ],
                      if (trip.budgetAmount != null && trip.currency != null)
                        Text(
                          'Budget: ${trip.budgetAmount} ${trip.currency}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                    ],
                  ),

                  trailing: PopupMenuButton<String>(
                    onSelected: (value) async {
                      if (value == 'delete') {
                        await planCtrl.deleteTrip(trip.id);
                        ref.invalidate(_allTripsProvider);
                        ref.invalidate(activeTripProvider);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Deleted: ${trip.city}')),
                        );
                      } else if (value == 'activate') {
                        await planCtrl.activateTrip(trip.id);
                        ref.invalidate(_allTripsProvider);
                        ref.invalidate(activeTripProvider);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Activated: ${trip.city}')),
                        );
                      } else if (value == 'deactivate') {
                        await planCtrl.deactivateTrip();
                        ref.invalidate(_allTripsProvider);
                        ref.invalidate(activeTripProvider);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Deactivated itinerary'),
                          ),
                        );
                      }
                    },
                    itemBuilder: (context) {
                      if (isActive) {
                        return [
                          const PopupMenuItem(
                            value: 'deactivate',
                            child: Text('Deactivate itinerary'),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ];
                      } else {
                        return [
                          const PopupMenuItem(
                            value: 'activate',
                            child: Text('Activate itinerary'),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ];
                      }
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
