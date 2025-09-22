import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/onboarding/domain/onboarding_prefs.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';
import 'package:travel_copilot/features/trip/data/mock_trip_repository.dart';

/// Repository provider (mock for now)
final tripRepositoryProvider = Provider<TripRepository>(
  (ref) => MockTripRepository(),
);

/// The active trip (mocked). Later, make this per-user and cached.
final activeTripProvider = FutureProvider<Trip>((ref) async {
  final repo = ref.read(tripRepositoryProvider);
  return repo.getActive();
});

class PlanController extends StateNotifier<AsyncValue<Trip>> {
  PlanController(this._read) : super(const AsyncLoading()) {
    _bootstrap();
  }

  final Ref _read;

  Future<void> _bootstrap() async {
    try {
      final t = await _read.read(tripRepositoryProvider).getActive();
      state = AsyncValue.data(t);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> generateFromPrefs(OnboardingPrefs prefs, Ref ref) async {
    state = const AsyncLoading();
    try {
      final repo = _read.read(tripRepositoryProvider);
      final newTrip = await repo.generate(prefs);
      state = AsyncValue.data(newTrip);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> replaceBlock({
    required int dayIndex,
    required int blockIndex,
    required TripBlock newBlock,
  }) async {
    final cur = state.valueOrNull;
    if (cur == null) return;
    final newDays = [...cur.days];
    final blocks = [...newDays[dayIndex].blocks];
    blocks[blockIndex] = newBlock;
    newDays[dayIndex] = newDays[dayIndex].copyWith(blocks: blocks);
    final updated = cur.copyWith(days: newDays);
    state = AsyncValue.data(updated);
    await _read.read(tripRepositoryProvider).save(updated);
  }

  Future<void> addBlock({
    required int dayIndex,
    required TripBlock block,
  }) async {
    final cur = state.valueOrNull;
    if (cur == null) return;
    final newDays = [...cur.days];
    final blocks = [...newDays[dayIndex].blocks, block];
    newDays[dayIndex] = newDays[dayIndex].copyWith(blocks: blocks);
    final updated = cur.copyWith(days: newDays);
    state = AsyncValue.data(updated);
    await _read.read(tripRepositoryProvider).save(updated);
  }
}
