import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/map/presentation/widgets/poi_card.dart';
import 'package:travel_copilot/features/poi/presentation/poi_providers.dart';

class MapV2Page extends ConsumerWidget {
  const MapV2Page({
    required this.city,
    required this.days,
    required this.startDate,
    super.key,
  });

  final String city;
  final int days;
  final DateTime startDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final poiAsync = ref.watch(
      poiListProvider({'city': city, 'days': days, 'startDate': startDate}),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Explore $city')),
      body: poiAsync.when(
        data: (pois) {
          if (pois.isEmpty) {
            return const Center(child: Text("No POIs found."));
          }
          return ListView.builder(
            itemCount: pois.length,
            itemBuilder: (context, index) {
              final poi = pois[index];
              return PoiCard(poi: poi);
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
