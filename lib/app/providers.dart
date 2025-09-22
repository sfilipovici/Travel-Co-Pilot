import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/data/mock_poi_repository.dart';
import 'package:travel_copilot/features/poi/domain/poi_repository.dart';
import 'package:travel_copilot/features/trip/data/mock_trip_repository.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final tripRepositoryProvider = Provider<TripRepository>(
  (ref) => MockTripRepository(),
);

final poiRepositoryProvider = Provider<POIRepository>(
  (ref) => MockPOIRepository(),
);

final appOverrides = <Override>[
  tripRepositoryProvider.overrideWith((ref) => MockTripRepository()),
  poiRepositoryProvider.overrideWith((ref) => MockPOIRepository()),
];

final supabaseProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});
