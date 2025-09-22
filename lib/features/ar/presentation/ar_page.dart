import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/presentation/poi_providers.dart';
import 'package:travel_copilot/features/trails/domain/models/trail.dart';
import 'package:travel_copilot/data/mock/seeds.dart';
import 'package:travel_copilot/features/downloads/presentation/downloads_providers.dart';

class ARPage extends ConsumerStatefulWidget {
  const ARPage({super.key});

  @override
  ConsumerState<ARPage> createState() => _ARPageState();
}

class _ARPageState extends ConsumerState<ARPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR'),
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(text: 'Camera'),
            Tab(text: 'Trails'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabs,
        children: const [_ARCameraMock(), _TrailsList()],
      ),
    );
  }
}

class _ARCameraMock extends ConsumerWidget {
  const _ARCameraMock();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // For first run, show a mock feed with overlay markers derived from POIs.
    final poisAsync = ref.watch(poiListProvider);
    return poisAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Failed to load POIs\n$e')),
      data: (pois) {
        final size = MediaQuery.of(context).size;
        final rnd = math.Random(42);
        // scatter some markers on the screen
        final offsets = List.generate(
          math.min(6, pois.length),
          (i) => Offset(
            24 + rnd.nextDouble() * (size.width - 64),
            80 + rnd.nextDouble() * (size.height - 220),
          ),
        );

        return Stack(
          children: [
            // Mock camera background
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: const Icon(
                Icons.videocam,
                size: 96,
                color: Colors.white54,
              ),
            ),
            // Overlay markers
            for (var i = 0; i < offsets.length; i++)
              Positioned(
                left: offsets[i].dx,
                top: offsets[i].dy,
                child: _ARMarkerChip(label: pois[i].name),
              ),
            // Hint
            Positioned(
              left: 12,
              right: 12,
              bottom: 16,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(Icons.info_outline),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Camera mock. We'll swap to ar_flutter_plugin (ARCore/ARKit) in real mode.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      const SizedBox(width: 8),
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('TTS: playing short story (mock)'),
                            ),
                          );
                        },
                        child: const Text('TTS'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ARMarkerChip extends StatelessWidget {
  const _ARMarkerChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(Icons.place, size: 18),
      label: Text(label, overflow: TextOverflow.ellipsis),
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}

class _TrailsList extends ConsumerWidget {
  const _TrailsList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trails = seedTrails;
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: trails.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, i) {
        final t = trails[i];
        final size = '${t.sizeMB} MB';
        return ListTile(
          leading: const Icon(Icons.route),
          title: Text(t.name),
          subtitle: Text('${t.checkpoints.length} checkpoints • $size'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                onPressed: () {
                  // simulate bundle download via downloads manager
                  ref
                      .read(downloadsControllerProvider.notifier)
                      .startDownload(
                        id: 'trail:${t.trailId}',
                        name: 'AR Trail – ${t.name}',
                        sizeMB: t.sizeMB,
                      );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Downloading "${t.name}" bundle (mock)'),
                    ),
                  );
                },
                child: const Text('Download'),
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => TrailDetailPage(trail: t),
                    ),
                  );
                },
                child: const Text('Open'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TrailDetailPage extends StatelessWidget {
  const TrailDetailPage({required this.trail, super.key});
  final Trail trail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(trail.name)),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Text(
            '${trail.checkpoints.length} checkpoints',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          for (final c in trail.checkpoints)
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(c.title), // ✅ model uses `title`, not `name`
              subtitle: Text(
                'lat ${c.coords.lat.toStringAsFixed(4)}, '
                'lng ${c.coords.lng.toStringAsFixed(4)}',
              ),
            ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: () => _startTrail(context),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start trail'),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () => _completeTrail(context),
            icon: const Icon(Icons.check_circle_outline),
            label: const Text('Complete (badge)'),
          ),
        ],
      ),
    );
  }

  void _startTrail(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Started "${trail.name}" (mock)')));
  }

  void _completeTrail(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Completed "${trail.name}" • Badge awarded (mock)'),
      ),
    );
  }
}
