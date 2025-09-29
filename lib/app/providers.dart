import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:travel_copilot/features/poi/domain/poi_repository.dart';

import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

const tripRepositoryProvider = Provider<TripRepository>;

final poiRepositoryProvider = Provider<PoiRepository>((ref) => PoiRepository());

final appOverrides = <Override>[];

final supabaseProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});
