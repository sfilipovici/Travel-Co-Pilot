import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/settings/presentation/settings_controller.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(settingsProvider);
    final c = ref.read(settingsProvider.notifier);
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: [
          _SectionHeader('General', cs),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            subtitle: Text(
              switch (s.languageCode) {
                'ro' => 'Română',
                _ => 'English',
              },
            ),
            trailing: DropdownButton<String>(
              value: s.languageCode,
              onChanged: (v) => v == null ? null : c.setLanguage(v),
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ro', child: Text('Română')),
              ],
            ),
          ),
          SwitchListTile(
            value: s.useMetric,
            onChanged: c.setUseMetric,
            title: const Text('Units'),
            subtitle: Text(
              s.useMetric ? 'Metric (km, °C)' : 'Imperial (mi, °F)',
            ),
            secondary: const Icon(Icons.straighten),
          ),
          _SectionHeader('Notifications', cs),
          SwitchListTile(
            value: s.pushEnabled,
            onChanged: c.setPush,
            title: const Text('Push notifications'),
            subtitle: const Text('Trip updates, reminders'),
            secondary: const Icon(Icons.notifications_active_outlined),
          ),
          SwitchListTile(
            value: s.inAppHintsEnabled,
            onChanged: c.setInAppHints,
            title: const Text('In-app smart hints'),
            subtitle: const Text('Contextual toasts & dialogs'),
            secondary: const Icon(Icons.info_outline),
          ),
          _SectionHeader('Privacy', cs),
          SwitchListTile(
            value: s.shareAnonCrowdData,
            onChanged: c.setShareAnonCrowd,
            title: const Text('Share anonymized crowd data'),
            subtitle: const Text('Helps improve live re-planning'),
            secondary: const Icon(Icons.shield_outlined),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FilledButton.tonal(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Saved (mock).')));
              },
              child: const Text('Save'),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.title, this.cs);
  final String title;
  final ColorScheme cs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: cs.primary,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
