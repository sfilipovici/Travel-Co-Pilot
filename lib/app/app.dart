import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/app/router.dart';
import 'package:travel_copilot/app/theme.dart';
import 'package:travel_copilot/features/replan/presentation/replan_listener.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Travel Copilot',
      theme: buildTheme(),
      routerConfig: router,
      // ✅ Global overlay again; child is the router content
      builder: (context, child) {
        return Stack(
          children: [
            Positioned.fill(child: child ?? const SizedBox.shrink()),
            const Positioned.fill(child: ReplanListener()),
          ],
        );
      },
    );
  }
}
