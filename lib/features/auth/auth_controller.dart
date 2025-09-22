import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:travel_copilot/app/providers.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<User?>>((ref) {
  final client = ref.watch(supabaseProvider);
  return AuthController(client);
});

class AuthController extends StateNotifier<AsyncValue<User?>> {
  AuthController(this.client) : super(const AsyncValue.loading()) {
    _init();
  }

  final SupabaseClient client;

  void _init() {
    final session = client.auth.currentSession;
    state = AsyncValue.data(session?.user);

    client.auth.onAuthStateChange.listen((data) {
      state = AsyncValue.data(data.session?.user);
    });
  }

  Future<void> register(String email, String password) async {
    try {
      state = const AsyncValue.loading();
      final res = await client.auth.signUp(
        email: email,
        password: password,
      );
      state = AsyncValue.data(res.user);
    } on AuthException catch (e, st) {
      state = AsyncValue.error(e.message, st);
    }
  }

  Future<void> login(String email, String password) async {
    try {
      state = const AsyncValue.loading();
      final res = await client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      state = AsyncValue.data(res.user);
    } on AuthException catch (e, st) {
      state = AsyncValue.error(e.message, st);
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      await client.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'com.supabase.flutter://login-callback/',
      );
    } on AuthException catch (e, st) {
      state = AsyncValue.error(e.message, st);
    }
  }

  Future<void> loginWithApple() async {
    try {
      await client.auth.signInWithOAuth(
        OAuthProvider.apple,
        redirectTo: 'https://ogneckjrdaqswwqmrpza.supabase.co/auth/v1/callback',
      );
    } on AuthException catch (e, st) {
      state = AsyncValue.error(e.message, st);
    }
  }

  Future<void> logout() async {
    await client.auth.signOut();
    state = const AsyncValue.data(null);
  }
}
