import 'dart:math';

import 'package:travel_copilot/core/models/geo.dart';
import 'package:travel_copilot/features/onboarding/domain/onboarding_prefs.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

/// In-memory mock repository. Generates a simple itinerary and keeps the active trip.
class MockTripRepository implements TripRepository {
  Trip? _active;

  MockTripRepository();

  @override
  Future<Trip> getActive() async {
    if (_active != null) return _active!;
    final now = DateTime.now();
    final prefs = OnboardingPrefs(
      city: 'Vienna',
      startDate: DateTime(now.year, now.month, now.day),
      days: 3,
      interests: const ['food', 'culture'],
      budgetLevel: 2,
    );
    _active = await generate(prefs);
    return _active!;
  }

  @override
  Future<void> save(Trip trip) async {
    // Persist in-memory
    _active = trip;
  }

  @override
  Future<Trip> generate(dynamic rawPrefs) async {
    final prefs = rawPrefs is OnboardingPrefs
        ? rawPrefs
        : OnboardingPrefs(
            city: 'Vienna',
            startDate: DateTime.now(),
            days: 3,
            interests: const ['food'],
            budgetLevel: 2,
          );

    final rnd = Random(prefs.city.hashCode ^ prefs.days);
    final List<TripDay> days = List.generate(prefs.days, (idx) {
      final d = idx + 1;
      return TripDay(
        day: d,
        blocks: [
          _makeBlock(
            time: 'Morning',
            base: 'Walk Old Town',
            lat: 48.2082 + rnd.nextDouble() * 0.01,
            lng: 16.3738 + rnd.nextDouble() * 0.01,
          ),
          _makeBlock(
            time: 'Lunch',
            base: 'Local Bistro',
            lat: 48.2082 + rnd.nextDouble() * 0.01,
            lng: 16.3738 + rnd.nextDouble() * 0.01,
          ),
          _makeBlock(
            time: 'Afternoon',
            base: 'Museum & Coffee',
            lat: 48.2082 + rnd.nextDouble() * 0.01,
            lng: 16.3738 + rnd.nextDouble() * 0.01,
          ),
          _makeBlock(
            time: 'Evening',
            base: 'Riverside Walk',
            lat: 48.2082 + rnd.nextDouble() * 0.01,
            lng: 16.3738 + rnd.nextDouble() * 0.01,
          ),
        ],
      );
    });

    return Trip(
      id: 'mock-${prefs.city.toLowerCase()}-${prefs.days}',
      city: prefs.city,
      startDate: prefs.startDate,
      days: days,
      summaryTips: const [
        'Use a 24h transit pass.',
        'Carry cash for small cafés.',
        'Avoid peak crowds 12:00–14:00.',
      ],
    );
  }

  @override
  Future<TripBlock> replaceBlock(TripBlock block, String preference) async {
    // Return a trivial modified block for tests/offline mode
    return TripBlock(
      time: block.time,
      poiId: block.poiId,
      title: '${block.title} ($preference)',
      reason: 'Mock replacement for $preference',
      budgetHint: block.budgetHint,
      crowdHint: block.crowdHint,
      coords: block.coords,
      sources: [...?block.sources, 'mock-replacement'],
    );
  }

  TripBlock _makeBlock({
    required String time,
    required String base,
    required double lat,
    required double lng,
  }) {
    return TripBlock(
      time: time,
      poiId: null,
      title: base,
      reason: 'Why it’s worth: cozy vibes, great photos.',
      budgetHint: '€€',
      crowdHint: 'medium',
      coords: LatLng(lat: lat, lng: lng),
      sources: const ['mock'],
    );
  }
}
