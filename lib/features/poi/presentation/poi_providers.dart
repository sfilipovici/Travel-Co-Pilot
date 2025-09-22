import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/data/mock_poi_repository.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/poi/domain/poi_repository.dart';

/// Repository DI
final poiRepositoryProvider = Provider<POIRepository>((ref) {
  return MockPOIRepository();
});

/// All POIs (canonical)
final poiListProvider = FutureProvider<List<POI>>((ref) async {
  final repo = ref.read(poiRepositoryProvider);
  return repo.getAll();
});

/// Back-compat alias for existing callers (Map screen)
final allPoisProvider = poiListProvider;

/// Single POI by id
final poiByIdProvider = FutureProvider.family<POI?, String>((ref, id) async {
  final repo = ref.read(poiRepositoryProvider);
  return repo.getById(id);
});
