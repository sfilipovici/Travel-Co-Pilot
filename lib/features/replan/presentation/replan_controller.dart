import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/replan/domain/replan_suggestion.dart';

class ReplanController extends StateNotifier<ReplanSuggestion?> {
  ReplanController() : super(null);

  Timer? _timer;
  bool _scheduled = false;

  /// Schedule a single demo suggestion after a short delay.
  void scheduleDemoOnce() {
    if (_scheduled) return;
    _scheduled = true;
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 8), () {
      state = ReplanSuggestion(
        id: 'rain-16',
        title: 'Rain at 16:00',
        message: 'Move hiking to tomorrow? We can swap with museum now.',
        when: DateTime.now(),
      );
    });
  }

  void accept() {
    // In a real impl, we’d mutate the active trip (swap blocks) and log analytics.
    state = null;
  }

  void seeAlternatives() {
    // In a real impl, we’d open a sheet with three suggestions (cheaper/closer/local).
    state = null;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final replanControllerProvider =
    StateNotifierProvider<ReplanController, ReplanSuggestion?>(
      (ref) => ReplanController(),
    );
