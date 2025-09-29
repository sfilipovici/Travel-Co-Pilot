import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/poi/domain/poi_repository.dart';

/// Repository provider
final poiRepositoryProvider = Provider<PoiRepository>((ref) {
  return PoiRepository();
});

/// Fetch POIs for a trip
final poiListProvider = FutureProvider.family<List<POI>, Map<String, dynamic>>((
  ref,
  args,
) async {
  final repo = ref.watch(poiRepositoryProvider);
  final city = args['city'] as String;
  final days = args['days'] as int;
  final startDate = args['startDate'] as DateTime;
  return repo.fetchTripPOIs(city: city, days: days, startDate: startDate);
});

/// Find POI by ID from a cached list
final poiByIdProvider = Provider.family<POI?, Map<String, dynamic>>((
  ref,
  args,
) {
  final pois = args['pois'] as List<POI>;
  final placeId = args['placeId'] as String;
  final repo = ref.watch(poiRepositoryProvider);
  return repo.findPoiById(pois, placeId);
});
