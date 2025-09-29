import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_copilot/features/auth/auth_controller.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    final controller = ref.read(authControllerProvider.notifier);

    final emailController = TextEditingController();
    final passController = TextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: passController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => controller.login(
                  emailController.text.trim(),
                  passController.text.trim(),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Log in with Email'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // TODO: add forgot password flow
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Forgot password? ',
                    children: [
                      TextSpan(
                        text: 'Reset it',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // Google sign in button using asset, same height as login button
              SizedBox(
                width: double.infinity,
                height: 48, // match login button height
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: controller.loginWithGoogle,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/icons/signin_dark.png'
                            : 'assets/icons/signin_light.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text('New user? Sign up'),
              ),
              if (authState.isLoading)
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: CircularProgressIndicator(),
                ),
              if (authState.hasError)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    authState.error.toString(),
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
