import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme/theme.dart';
import 'theme/theme_mode.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  AppState createConsumerState() => AppState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => AppState();
}

class AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final theme = ref.watch(lightThemeProvider);
    final darkTheme = ref.watch(darkThemeProvider);
    final themeMode = ref.watch(themeSelectorProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}
