import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';

/// Provides the TripRepository instance
final tripRepositoryProvider = Provider<TripRepository>((ref) {
  final client = Supabase.instance.client;
  return TripRepository(client);
});

/// Provides the currently active trip globally
final activeTripProvider = FutureProvider<Trip?>((ref) async {
  final repo = ref.watch(tripRepositoryProvider);
  return repo.getActive();
});

class TripRepository {
  final SupabaseClient _client;
  TripRepository(this._client);

  String _requireUserId() {
    final user = _client.auth.currentUser;
    if (user == null) {
      throw Exception('No authenticated user found');
    }
    return user.id;
  }

  /// Fetch the active trip for current user
  Future<Trip?> getActive() async {
    final userId = _requireUserId();

    final response =
        await _client
                .from('trips')
                .select()
                .eq('user_id', userId)
                .eq('is_active', true)
                .order('created_at', ascending: false)
                .limit(1)
                .maybeSingle()
            as Map<String, dynamic>?;

    if (response == null) return null;
    return Trip.fromJson(response);
  }

  /// Save or update a trip
  Future<void> save(Trip trip) async {
    final userId = _requireUserId();
    final json = trip.toJson()..['user_id'] = userId;

    final res = await _client.from('trips').upsert(json).select();
    if (res == null) {
      throw Exception('Failed to save trip');
    }
  }

  /// Fetch all itineraries for current user
  Future<List<Trip>> getAll() async {
    final userId = _requireUserId();

    final response =
        await _client
                .from('trips')
                .select()
                .eq('user_id', userId)
                .order('created_at', ascending: false)
            as List<dynamic>;

    if (response.isEmpty) return [];

    return response
        .map((e) => Trip.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Set a specific trip as active, deactivating all others
  Future<void> activateTrip(String tripId) async {
    final userId = _requireUserId();

    // deactivate all first
    await _client
        .from('trips')
        .update({'is_active': false})
        .eq('user_id', userId);

    // activate selected one
    await _client
        .from('trips')
        .update({'is_active': true})
        .eq('id', tripId)
        .eq('user_id', userId);
  }

  /// Deactivate all trips
  Future<void> deactivateTrip() async {
    final userId = _requireUserId();

    await _client
        .from('trips')
        .update({'is_active': false})
        .eq('user_id', userId);
  }

  /// Delete a trip
  Future<void> delete(String tripId) async {
    final userId = _requireUserId();
    await _client.from('trips').delete().eq('id', tripId).eq('user_id', userId);
  }

  /// Replace block logic (calls RPC function)
  Future<TripBlock> replaceBlock(TripBlock block, String choice) async {
    try {
      final res = await _client.rpc<Map<String, dynamic>>(
        'replace_block',
        params: {'block': block.toJson(), 'choice': choice},
      );
      return TripBlock.fromJson(res);
    } catch (_) {
      // fallback
      return block.copyWith(
        title: '${block.title} ($choice)',
        reason: '${block.reason ?? ''} — replacement: $choice',
      );
    }
  }

  /// Generate trip (fallback implementation if backend fails)
  Future<Trip> generate(dynamic prefs) async {
    try {
      final res = await _client.rpc<Map<String, dynamic>>(
        'generate_trip',
        params: prefs as Map<String, dynamic>? ?? {},
      );
      return Trip.fromJson(res);
    } catch (_) {
      // fallback below
    }

    if (prefs is Map<String, dynamic>) {
      return Trip(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        userId: prefs['userId']?.toString() ?? 'unknown-user',
        city: prefs['city']?.toString() ?? 'Unknown',
        startDate: prefs['startDate'] is DateTime
            ? prefs['startDate'] as DateTime
            : DateTime.now(),
        endDate: prefs['endDate'] is DateTime
            ? prefs['endDate'] as DateTime
            : DateTime.now().add(const Duration(days: 3)),
        days: const [],
        budgetAmount: prefs['budgetAmount'] as int?,
        categories:
            (prefs['interests'] as List<dynamic>?)
                ?.map((e) => e.toString())
                .toList() ??
            const [],
        currency: prefs['currency']?.toString(),
      );
    }

    // ensure we always return something
    return Trip(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: 'unknown-user',
      city: 'Unknown',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 3)),
      days: const [],
      categories: const [],
    );
  }
}
