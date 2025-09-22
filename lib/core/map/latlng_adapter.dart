import 'package:latlong2/latlong.dart' as ll;
import 'package:travel_copilot/core/models/geo.dart' as core;

/// Convert our core LatLng <-> latlong2 LatLng
extension CoreLatLngAdapter on core.LatLng {
  ll.LatLng toLL() => ll.LatLng(lat, lng);
}
