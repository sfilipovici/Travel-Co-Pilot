import 'package:travel_copilot/features/trip/domain/models/trip.dart';

/// Small domain abstraction so we can later switch to a real /suggest endpoint.
abstract class SuggestRepository {
  /// mode: 'closer' | 'cheaper' | 'local' (for now; free string)
  Future<List<TripBlock>> getAlternatives({
    required TripBlock current,
    required String mode,
  });
}
