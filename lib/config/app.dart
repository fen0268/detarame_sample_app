import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';

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

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
