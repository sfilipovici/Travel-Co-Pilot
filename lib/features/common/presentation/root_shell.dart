import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this.location, required this.child});

  final String location;
  final Widget child;

  int _indexFromLocation(String l) {
    if (l.startsWith('/plan')) return 0;
    if (l.startsWith('/map2')) return 1;
    if (l.startsWith('/ar')) return 2;
    if (l.startsWith('/profile')) return 3;
    return 0;
  }

  String _pathFromIndex(int i) {
    switch (i) {
      case 0:
        return '/plan';
      case 1:
        return '/map2';
      case 2:
        return '/ar';
      case 3:
        return '/profile';
      default:
        return '/plan';
    }
  }

  @override
  Widget build(BuildContext context) {
    final selected = _indexFromLocation(location);
    return Scaffold(
      // ✅ Restore the child directly (no overlay/Stack here)
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selected,
        onDestinationSelected: (i) {
          final path = _pathFromIndex(i);
          if (GoRouterState.of(context).uri.toString() != path) {
            context.go(path);
          }
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.today_outlined),
            selectedIcon: Icon(Icons.today),
            label: 'Plan',
          ),
          NavigationDestination(
            icon: Icon(Icons.map_outlined),
            selectedIcon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            icon: Icon(Icons.view_in_ar_outlined),
            selectedIcon: Icon(Icons.view_in_ar),
            label: 'AR',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
