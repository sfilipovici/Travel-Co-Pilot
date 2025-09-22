import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:travel_copilot/app/providers.dart';
import 'package:travel_copilot/features/onboarding/domain/onboarding_prefs.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';

final tripRepositoryProvider = Provider<TripRepository>((ref) {
  final supabase = ref.watch(supabaseProvider);
  return TripRepository(supabase);
});

class TripRepository {
  TripRepository(this._client);

  final SupabaseClient _client;

  Future<Trip> getActive() async {
    final res = await _client
        .from('trips')
        .select()
        .order('created_at', ascending: false)
        .limit(1)
        .maybeSingle();

    if (res == null) {
      throw Exception('No active trip found');
    }

    return Trip.fromJson(res);
  }

  Future<void> save(Trip trip) async {
    final data = {
      ...trip.toJson(),
    };

    data.remove('id'); // let Postgres generate UUID
    data.remove('user_id'); // Postgres will auto-fill with auth.uid()

    await _client.from('trips').insert(data);
  }

  /// Calls the AI Edge Function to generate a trip
  Future<Trip> generate(OnboardingPrefs prefs) async {
    try {
      final response = await _client.functions.invoke(
        'generate-trip',
        body: prefs.toJson(),
      );

      return Trip.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw Exception('AI generation failed: $e');
    }
  }

  Future<TripBlock> replaceBlock(TripBlock block, String preference) async {
    try {
      final response = await _client.functions.invoke(
        'replace-block',
        body: {
          'block': block.toJson(),
          'preference': preference,
        },
      );

      return TripBlock.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw Exception('AI replacement failed: $e');
    }
  }
}
