import 'package:flutter/material.dart';

/// App-wide Material 3 theme.
/// Keep this small and opinionated so features can override per-Widget as needed.
ThemeData buildTheme({Brightness? platformBrightness}) {
  // If not provided, read from platform at runtime (safe on hot reload)
  final brightness =
      platformBrightness ??
      WidgetsBinding.instance.platformDispatcher.platformBrightness;

  final colorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF2563EB), // blue-600 vibe
    brightness: brightness,
  );

  final base = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  return base.copyWith(
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colorScheme.inverseSurface,
      contentTextStyle: TextStyle(color: colorScheme.onInverseSurface),
    ),
    chipTheme: base.chipTheme.copyWith(
      side: BorderSide(color: colorScheme.outlineVariant),
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurfaceVariant,
    ),
    dividerColor: colorScheme.outlineVariant,
  );
}
