import 'dart:async';
import 'package:travel_copilot/core/models/geo.dart' as appgeo;
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/poi/domain/poi_repository.dart';

class MockPOIRepository implements POIRepository {
  @override
  Future<List<POI>> getAll() async {
    // Simulate a tiny delay like a real network/db call
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return _demoPois;
  }

  @override
  Future<POI?> getById(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 120));
    try {
      return _demoPois.firstWhere((p) => p.poiId == id);
    } catch (_) {
      return null;
    }
  }
}

// --- Demo POIs around central Bucharest ---
final List<POI> _demoPois = <POI>[
  POI(
    poiId: 'poi_1',
    name: 'Old Town Coffee',
    category: 'food',
    priceLevel: 1,
    rating: 4.6,
    address: 'Str. Smârdan 15, București',
    openingHours: const [],
    coords: const appgeo.LatLng(lat: 44.4325, lng: 26.1039),
    images: const [],
    sourceRefs: const [],
  ),
  POI(
    poiId: 'poi_2',
    name: 'Muzeul Național de Artă',
    category: 'museum',
    priceLevel: 2,
    rating: 4.7,
    address: 'Calea Victoriei 49-53, București',
    openingHours: const [],
    coords: const appgeo.LatLng(lat: 44.4397, lng: 26.0950),
    images: const [],
    sourceRefs: const [],
  ),
  POI(
    poiId: 'poi_3',
    name: 'Cișmigiu Park',
    category: 'park',
    priceLevel: 1,
    rating: 4.6,
    address: 'Bd. Regina Elisabeta, București',
    openingHours: const [],
    coords: const appgeo.LatLng(lat: 44.4355, lng: 26.0936),
    images: const [],
    sourceRefs: const [],
  ),
  POI(
    poiId: 'poi_4',
    name: 'Caru’ cu Bere',
    category: 'food',
    priceLevel: 2,
    rating: 4.5,
    address: 'Str. Stavropoleos 5, București',
    openingHours: const [],
    coords: const appgeo.LatLng(lat: 44.4317, lng: 26.0999),
    images: const [],
    sourceRefs: const [],
  ),
  POI(
    poiId: 'poi_5',
    name: 'University Passage Viewpoint',
    category: 'viewpoint',
    priceLevel: 1,
    rating: 4.3,
    address: 'Piața Universității, București',
    openingHours: const [],
    coords: const appgeo.LatLng(lat: 44.4359, lng: 26.1023),
    images: const [],
    sourceRefs: const [],
  ),
];
