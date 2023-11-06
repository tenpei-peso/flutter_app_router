import 'package:app_rputer/presentation/tab_page.dart';
import 'package:app_rputer/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      title: 'beta',
    );
  }
}
