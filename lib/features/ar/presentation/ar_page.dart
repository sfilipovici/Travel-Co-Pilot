import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trails/domain/models/trail.dart';

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
    );
  }
}

// _ARMarkerChip removed — unused in current UI

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
