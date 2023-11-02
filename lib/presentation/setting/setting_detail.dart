import 'package:app_rputer/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SettingDetailsAutoRouterPage extends AutoRouter {
  const SettingDetailsAutoRouterPage({super.key});
}

@RoutePage()
class SettingDetailPage extends HookConsumerWidget {
  const SettingDetailPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pushRoute(const SettingMoreDetailRoute());
          },
          child: const Text('もっと詳細へ'),
        ),
      )
    );
  }
}