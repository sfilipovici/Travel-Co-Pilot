import 'package:dio/dio.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';

class PoiRepository {

  PoiRepository({Dio? dio}) : _dio = dio ?? Dio();
  final Dio _dio;

  /// Calls Supabase Edge Function "generate-trip"
  Future<List<POI>> fetchTripPOIs({
    required String city,
    required int days,
    required DateTime startDate,
  }) async {
    final response = await _dio.post<Map<String, dynamic>>(
      'https://ogneckjrdaqswwqmrpza.supabase.co/functions/v1/generate-trip',
      data: {
        'city': city,
        'days': days,
        'startDate': startDate.toIso8601String(),
      },
      options: Options(headers: {
        'Content-Type': 'application/json',
      }),
    );

    if (response.statusCode == 200 && response.data != null) {
      final data = response.data!;
      final pois = <POI>[];

      final daysList = data['days'] as List<dynamic>? ?? [];
      for (final day in daysList) {
        final blocks =
            (day as Map<String, dynamic>)['blocks'] as List<dynamic>? ?? [];
        for (final block in blocks) {
          pois.add(POI.fromJson(block as Map<String, dynamic>));
        }
      }
      return pois;
    } else {
      throw Exception('Failed to fetch POIs: ${response.statusCode}');
    }
  }

  /// Optional: fetch POI by ID (from cached trip response)
  POI? findPoiById(List<POI> pois, String placeId) {
    return pois.firstWhere(
      (poi) => poi.placeId == placeId,
      orElse: () => throw Exception('POI not found'),
    );
  }
}
