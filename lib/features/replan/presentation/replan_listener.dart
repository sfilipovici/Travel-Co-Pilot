import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_copilot/features/replan/presentation/replan_controller.dart';

/// Global listener mounted above routes. It looks up the *root* Navigator
/// from GoRouter before showing dialogs, so it never blocks the shell content.
class ReplanListener extends ConsumerStatefulWidget {
  const ReplanListener({super.key});

  @override
  ConsumerState<ReplanListener> createState() => _ReplanListenerState();
}

class _ReplanListenerState extends ConsumerState<ReplanListener> {
  bool _dialogOpen = false;
  bool _scheduled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_scheduled) {
      _scheduled = true;
      // Schedule demo once after first frame
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(replanControllerProvider.notifier).scheduleDemoOnce();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(replanControllerProvider, (prev, next) async {
      if (next == null || _dialogOpen) return;

      // ✅ Resolve the real Navigator context from GoRouter (root)
      final navKey = GoRouter.of(context).routerDelegate.navigatorKey;
      final navContext = navKey.currentContext;
      if (navContext == null) return;

      _dialogOpen = true;

      final controller = ref.read(replanControllerProvider.notifier);
      await showDialog<void>(
        context: navContext,
        builder: (ctx) => AlertDialog(
          title: Text(next.title),
          content: Text(next.message),
          actions: [
            TextButton(
              onPressed: () {
                controller.seeAlternatives();
                Navigator.of(ctx, rootNavigator: true).pop();
                ScaffoldMessenger.of(navContext).showSnackBar(
                  const SnackBar(content: Text('Showing alternatives (mock)…')),
                );
              },
              child: const Text('See alternatives'),
            ),
            FilledButton(
              onPressed: () {
                controller.accept();
                Navigator.of(ctx, rootNavigator: true).pop();
                ScaffoldMessenger.of(navContext).showSnackBar(
                  const SnackBar(content: Text('Accepted. Replanned (mock)')),
                );
              },
              child: const Text('Accept'),
            ),
          ],
        ),
      );

      _dialogOpen = false;
    });

    // Invisible widget — only listens
    return const SizedBox.shrink();
  }
}
