import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

final planControllerProvider =
    StateNotifierProvider<PlanController, AsyncValue<void>>((ref) {
      final repo = ref.watch(tripRepositoryProvider);
      return PlanController(repo);
    });

class PlanController extends StateNotifier<AsyncValue<void>> {
  final TripRepository _repo;
  final Dio _dio;

  PlanController(this._repo)
    : _dio = Dio(
        BaseOptions(
          baseUrl: '${dotenv.env['SUPABASE_URL']}/functions/v1',
          headers: {
            'Authorization': 'Bearer ${dotenv.env['SUPABASE_ANON_KEY']}',
            'Content-Type': 'application/json',
          },
        ),
      ),
      super(const AsyncData(null));

  Future<void> generateTrip({
    required String city,
    required DateTime startDate,
    required DateTime endDate,
    required int budgetAmount,
    required String currency,
    required List<String> categories,
  }) async {
    state = const AsyncLoading();
    try {
      final user = Supabase.instance.client.auth.currentUser;
      if (user == null) {
        throw Exception('User must be logged in to create a trip');
      }

      final days = endDate.difference(startDate).inDays + 1;

      final Response<Map<String, dynamic>> response = await _dio.post(
        '/generate-trip',
        data: {
          'userId': user.id,
          'city': city,
          'startDate': startDate.toIso8601String(),
          'endDate': endDate.toIso8601String(),
          'days': days,
          'budgetAmount': budgetAmount,
          'currency': currency,
          'interests': categories,
        },
      );

      final dynamic raw = response.data ?? <String, dynamic>{};
      final Map<String, dynamic> data = (raw is Map<String, dynamic>)
          ? raw
          : Map<String, dynamic>.from(raw as Map);

      // Validate JSON parses correctly into Trip
      final _ = Trip.fromJson(data);

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> activateTrip(String id) async {
    state = const AsyncLoading();
    try {
      // ✅ Repo now ensures only one trip is active
      await _repo.activateTrip(id);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> deleteTrip(String id) async {
    state = const AsyncLoading();
    try {
      await _repo.delete(id);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }
}
