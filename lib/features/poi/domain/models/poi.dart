import 'package:equatable/equatable.dart';

class POI extends Equatable {
  const POI({
    required this.placeId,
    required this.name,
    required this.lat,
    required this.lng,
    required this.categories,
    required this.timeOfDay,
    required this.reason,
    required this.budgetHint,
    required this.crowdHint,
    required this.sources,
    this.rating,
    this.priceLevel,
    this.openingHours,
    this.address,
  });

  factory POI.fromJson(Map<String, dynamic> json) {
    final coords = json['coords'] as Map<String, dynamic>?;

    return POI(
      placeId: json['place_id']?.toString() ?? '',
      name: json['name']?.toString() ?? json['title']?.toString() ?? 'Unknown',
      lat: (coords?['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (coords?['lng'] as num?)?.toDouble() ?? 0.0,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      rating: (json['rating'] as num?)?.toDouble(),
      priceLevel: (json['price_level'] as num?)?.toInt(),
      openingHours: (json['opening_hours'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList(),
      address: json['address']?.toString(),
      timeOfDay: json['time']?.toString() ?? '',
      reason: json['reason']?.toString() ?? '',
      budgetHint: json['budget_hint']?.toString() ?? '',
      crowdHint: json['crowd_hint']?.toString() ?? '',
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
    );
  }
  final String placeId;
  final String name;
  final double lat;
  final double lng;
  final List<String> categories;
  final double? rating;
  final int? priceLevel;
  final List<String>? openingHours;
  final String? address;
  final String timeOfDay;
  final String reason;
  final String budgetHint;
  final String crowdHint;
  final List<String> sources;

  @override
  List<Object?> get props => [
    placeId,
    name,
    lat,
    lng,
    categories,
    rating,
    priceLevel,
    openingHours,
    address,
    timeOfDay,
    reason,
    budgetHint,
    crowdHint,
    sources,
  ];
}
