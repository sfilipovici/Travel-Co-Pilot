import 'dart:math';
import 'package:travel_copilot/features/poi/data/mock_poi_repository.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/suggest/domain/suggest_repository.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';

/// Very lightweight mock that converts POIs into TripBlocks.
/// NOTE: We do not depend on a specific LatLng/Geo type here.
/// "closer" uses rating as a stand-in in mock mode to avoid coords typing issues.
class MockSuggestRepository implements SuggestRepository {
  MockSuggestRepository();

  @override
  Future<List<TripBlock>> getAlternatives({
    required TripBlock current,
    required String mode,
  }) async {
    final poiRepo = MockPOIRepository();
    final all = await poiRepo.getAll();

    // Exclude current POI if present
    final filtered = all.where((p) => p.poiId != current.poiId).toList();

    List<POI> scored;
    switch (mode) {
      case 'cheaper':
        // lower priceLevel first; then higher rating
        scored = [...filtered]..sort((a, b) {
            final byPrice = a.priceLevel.compareTo(b.priceLevel);
            if (byPrice != 0) return byPrice;
            return b.rating.compareTo(a.rating);
          });
        break;
      case 'local':
        // Naive "local gems": mid price near €€ with good rating
        scored = [...filtered]..sort((a, b) {
            final byMidPrice =
                (a.priceLevel - 2).abs().compareTo((b.priceLevel - 2).abs());
            if (byMidPrice != 0) return byMidPrice;
            return b.rating.compareTo(a.rating);
          });
        break;
      case 'closer':
      default:
        // Mock fallback: use higher rating as "closer"
        scored = [...filtered]..sort((a, b) => b.rating.compareTo(a.rating));
        break;
    }

    // Pick top 3 and map to TripBlock, inheriting current time slot
    final picks = scored.take(3).map((p) {
      final euro = '€' * max(1, p.priceLevel.clamp(1, 3));
      final crowd =
          p.rating >= 4.5 ? 'popular' : (p.rating >= 4.0 ? 'busy' : 'calm');

      return TripBlock(
        time: current.time,
        poiId: p.poiId,
        title: p.name,
        reason: "Local tip near ${p.address.split(',').first}.",
        budgetHint: euro,
        crowdHint: crowd,
        // Pass through whatever coords type POI uses (keeps compile-time agnostic)
        coords: p.coords,
        sources: const ['mock'],
      );
    }).toList();

    // small async feel
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return picks;
  }
}
