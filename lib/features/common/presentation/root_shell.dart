import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Simple strongly-typed model for bottom navigation tabs
class _TabItem {
  final IconData icon;
  final String label;
  final String route;
  const _TabItem({
    required this.icon,
    required this.label,
    required this.route,
  });
}

class RootShell extends StatelessWidget {
  const RootShell({required this.child, super.key});

  final Widget child;

  // Use a strongly-typed tab model to avoid runtime casts and analyzer warnings
  static const List<_TabItem> _tabs = [
    _TabItem(icon: Icons.explore, label: 'Plan', route: '/plan'),
    _TabItem(
      icon: Icons.event_note,
      label: 'Itineraries',
      route: '/itineraries',
    ),
    _TabItem(icon: Icons.view_in_ar, label: 'AR', route: '/ar'),
    _TabItem(icon: Icons.person, label: 'Profile', route: '/profile'),
  ];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    int currentIndex = _tabs.indexWhere((t) => location.startsWith(t.route));
    if (currentIndex == -1) currentIndex = 0;

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF6C63FF),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          context.go(_tabs[index].route);
        },
        items: _tabs
            .map(
              (t) =>
                  BottomNavigationBarItem(icon: Icon(t.icon), label: t.label),
            )
            .toList(),
      ),
    );
  }
}
