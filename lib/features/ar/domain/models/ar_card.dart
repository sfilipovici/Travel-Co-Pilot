import 'package:freezed_annotation/freezed_annotation.dart';

part 'ar_card.freezed.dart';
part 'ar_card.g.dart';

@freezed
class AROverlay with _$AROverlay {
  const factory AROverlay({
    required String id,
    @Default('marker') String type,
  }) = _AROverlay;

  factory AROverlay.fromJson(Map<String, dynamic> json) =>
      _$AROverlayFromJson(json);
}

@freezed
class ARCard with _$ARCard {
  const factory ARCard({
    required String arCardId,
    required String poiId,
    required String shortStory,
    @Default('') String audioUrl,
    @Default(<AROverlay>[]) List<AROverlay> overlays,
  }) = _ARCard;

  factory ARCard.fromJson(Map<String, dynamic> json) => _$ARCardFromJson(json);
}
