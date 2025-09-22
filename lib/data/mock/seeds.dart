import 'package:travel_copilot/core/models/geo.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/trails/domain/models/trail.dart';

// ---- POIs (existing demo set) ----
final seedPOIs = <POI>[
  POI(
    poiId: 'p-old-town',
    name: 'Old Town Square',
    category: 'Sight',
    priceLevel: 1,
    rating: 4.6,
    address: 'Staroměstské nám., Prague',
    openingHours: const [],
    coords: const LatLng(lat: 50.087, lng: 14.406),
    images: const [],
    sourceRefs: const ['mock'],
  ),
  POI(
    poiId: 'p-local-bistro',
    name: 'Local Bistro',
    category: 'Food',
    priceLevel: 2,
    rating: 4.4,
    address: 'Somewhere in Prague',
    openingHours: const [],
    coords: const LatLng(lat: 50.088, lng: 14.409),
    images: const [],
    sourceRefs: const ['mock'],
  ),
  POI(
    poiId: 'p-hidden-court',
    name: 'Hidden Courtyard',
    category: 'Hidden gem',
    priceLevel: 1,
    rating: 4.2,
    address: '',
    openingHours: const [],
    coords: const LatLng(lat: 50.089, lng: 14.407),
    images: const [],
    sourceRefs: const ['mock'],
  ),
  POI(
    poiId: 'p-river-walk',
    name: 'Riverside Walk',
    category: 'Walk',
    priceLevel: 1,
    rating: 4.7,
    address: '',
    openingHours: const [],
    coords: const LatLng(lat: 50.090, lng: 14.410),
    images: const [],
    sourceRefs: const ['mock'],
  ),
];

// ---- Trails (new demo set) ----
// Your TrailCheckpoint model requires `title` (no `id`/`name`).
final seedTrails = <Trail>[
  Trail(
    trailId: 't-medieval-walk',
    name: 'Medieval Walk',
    checkpoints: [
      TrailCheckpoint(
        title: 'Old Town Square',
        coords: const LatLng(lat: 50.0870, lng: 14.4060),
      ),
      TrailCheckpoint(
        title: 'Astronomical Clock',
        coords: const LatLng(lat: 50.0876, lng: 14.4068),
      ),
      TrailCheckpoint(
        title: 'Charles Bridge Gate',
        coords: const LatLng(lat: 50.0865, lng: 14.4100),
      ),
    ],
    bundleUrl: 'https://example.com/medieval_walk.zip',
    sizeMB: 42,
  ),
  Trail(
    trailId: 't-coffee-crawl',
    name: 'Coffee Crawl',
    checkpoints: [
      TrailCheckpoint(
        title: 'Vltava Beans',
        coords: const LatLng(lat: 50.0848, lng: 14.4075),
      ),
      TrailCheckpoint(
        title: 'Roastery 1914',
        coords: const LatLng(lat: 50.0856, lng: 14.4082),
      ),
      TrailCheckpoint(
        title: 'Café Under Clock',
        coords: const LatLng(lat: 50.0863, lng: 14.4094),
      ),
    ],
    bundleUrl: 'https://example.com/coffee_crawl.zip',
    sizeMB: 28,
  ),
];
