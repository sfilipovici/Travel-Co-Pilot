import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_copilot/app/providers.dart';
import 'package:travel_copilot/features/auth/auth_controller.dart';
import 'package:travel_copilot/features/auth/presentation/login_page.dart';
import 'package:travel_copilot/features/auth/presentation/register_page.dart';
import 'package:travel_copilot/features/plan/presentation/plan_page.dart';
import 'package:travel_copilot/features/map/presentation/map_v2_page.dart';
import 'package:travel_copilot/features/ar/presentation/ar_page.dart';
import 'package:travel_copilot/features/profile/presentation/profile_page.dart';
import 'package:travel_copilot/features/onboarding/presentation/onboarding_flow_page.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }
  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authControllerProvider);
  final supabase = ref.watch(supabaseProvider);

  return GoRouter(
    initialLocation: '/plan',
    refreshListenable: GoRouterRefreshStream(supabase.auth.onAuthStateChange),
    routes: [
      GoRoute(path: '/login', builder: (c, s) => const LoginPage()),
      GoRoute(path: '/register', builder: (c, s) => const RegisterPage()),

      // ✅ Add the onboarding route here
      GoRoute(
        path: '/onboarding',
        builder: (c, s) => const OnboardingFlowPage(),
      ),

      /// Main shell with bottom nav
      StatefulShellRoute.indexedStack(
        builder: (context, state, navShell) {
          return Scaffold(
            body: navShell,
            bottomNavigationBar: NavigationBar(
              selectedIndex: navShell.currentIndex,
              onDestinationSelected: navShell.goBranch,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.event), label: 'Plan'),
                NavigationDestination(icon: Icon(Icons.map), label: 'Map'),
                NavigationDestination(icon: Icon(Icons.camera), label: 'AR'),
                NavigationDestination(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/plan', builder: (c, s) => const PlanPage()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/map', builder: (c, s) => const MapV2Page()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/ar', builder: (c, s) => const ARPage()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/profile', builder: (c, s) => const ProfilePage()),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = authState.value != null;
      final loggingIn = state.uri.toString() == '/login' ||
          state.uri.toString() == '/register';

      if (!isLoggedIn && !loggingIn) return '/login';
      if (isLoggedIn && loggingIn) return '/plan';
      return null;
    },
  );
});
