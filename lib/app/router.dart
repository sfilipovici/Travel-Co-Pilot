import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:travel_copilot/features/ar/presentation/ar_page.dart';
import 'package:travel_copilot/features/common/presentation/root_shell.dart';
import 'package:travel_copilot/features/itineraries/presentation/itineraries_page.dart';
import 'package:travel_copilot/features/plan/presentation/plan_page.dart';
import 'package:travel_copilot/features/profile/presentation/profile_page.dart';
import 'package:travel_copilot/features/auth/presentation/login_page.dart';
import 'package:travel_copilot/features/auth/auth_controller.dart';
import 'package:travel_copilot/features/trip/presentation/trips_page.dart';

/// Provider for the global router so widgets can watch it via Riverpod
final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: '/login',
    refreshListenable: GoRouterRefreshStream(
      ref.watch(authControllerProvider.notifier).client.auth.onAuthStateChange,
    ),
    redirect: (context, state) {
      final isLoggedIn = authState.asData?.value != null;
      final currentPath = state.uri.path;
      final loggingIn = currentPath == '/login' || currentPath == '/register';

      if (!isLoggedIn) {
        // not logged in → always redirect to login unless already there
        return loggingIn ? null : '/login';
      }

      if (isLoggedIn && loggingIn) {
        // logged in but trying to go to /login → send to plan
        return '/plan';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) =>
            const NoTransitionPage(child: LoginPage()),
      ),
      ShellRoute(
        builder: (context, state, child) => RootShell(child: child),
        routes: [
          GoRoute(
            path: '/plan',
            name: 'plan',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: PlanPage()),
          ),
          GoRoute(
            path: '/itineraries',
            name: 'itineraries',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ItineraryPage()),
          ),
          GoRoute(
            path: '/ar',
            name: 'ar',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ARPage()),
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfilePage()),
          ),

          GoRoute(
            path: '/trips',
            builder: (context, state) => const TripsPage(),
          ),
        ],
      ),
    ],
  );
});

// Simple adapter to convert a Stream into a ChangeNotifier for GoRouter
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _sub = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _sub;

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
