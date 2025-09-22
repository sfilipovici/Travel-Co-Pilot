import 'package:travel_copilot/features/poi/domain/models/poi.dart';

abstract class POIRepository {
  Future<List<POI>> getAll();
  Future<POI?> getById(String id);
}
