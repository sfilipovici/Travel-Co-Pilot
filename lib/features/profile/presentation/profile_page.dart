import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // --- User info mockup ---
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 3,
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFF6C63FF),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                'Traveler',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('user@example.com'),
            ),
          ),
          const SizedBox(height: 24),

          // ✅ Button to itineraries page
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6C63FF),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: () => context.push('/trips'),
            icon: const Icon(Icons.list, color: Colors.white),
            label: const Text(
              'My Itineraries',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
