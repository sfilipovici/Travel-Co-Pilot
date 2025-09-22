import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_copilot/features/settings/presentation/settings_controller.dart';
import 'package:travel_copilot/features/auth/auth_controller.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(settingsProvider);
    final cs = Theme.of(context).colorScheme;
    final authState = ref.watch(authControllerProvider);
    final authController = ref.read(authControllerProvider.notifier);

    final user = authState.value;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: cs.primaryContainer,
                child: const Icon(Icons.person),
              ),
              title: Text(user?.email ?? 'Guest'),
              subtitle: Text(
                user != null
                    ? 'Signed in with ${user.appMetadata['provider']}'
                    : 'Not signed in',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: user != null ? () => context.push('/settings') : null,
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.download_rounded),
              title: const Text('Downloads'),
              subtitle: const Text('Offline maps & AR bundles'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.push('/downloads'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.bookmark_outline),
              title: const Text('Saved'),
              subtitle: const Text('POIs you bookmarked'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.push('/saved'),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.emoji_events_outlined),
              title: const Text('Badges & eco-score'),
              subtitle: const Text('Progress & stats'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Badges coming soon…')),
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          if (user != null)
            Card(
              child: ListTile(
                leading: const Icon(Icons.logout_rounded, color: Colors.red),
                title: const Text('Logout'),
                onTap: () async {
                  await authController.logout();
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logged out')),
                    );
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
