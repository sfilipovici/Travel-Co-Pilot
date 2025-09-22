import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/saved/domain/saved_item.dart';

class SavedController extends StateNotifier<List<SavedItem>> {
  SavedController() : super(const []);

  bool isSaved(String id) => state.any((e) => e.id == id);

  void toggle(SavedItem item) {
    if (isSaved(item.id)) {
      state = state.where((e) => e.id != item.id).toList();
    } else {
      state = [...state, item];
    }
  }

  void remove(String id) {
    state = state.where((e) => e.id != id).toList();
  }

  void clear() => state = const [];
}

final savedProvider = StateNotifierProvider<SavedController, List<SavedItem>>(
  (ref) => SavedController(),
);
