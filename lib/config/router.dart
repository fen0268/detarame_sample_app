import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../feature/merchant/presentation/merchant_page.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: MerchantPage.path,
    routes: [
      GoRoute(
        path: MerchantPage.path,
        pageBuilder: (context, state) => const MaterialPage(
          child: MerchantPage(),
        ),
      ),
    ],
  );
}
