import 'package:app_rputer/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SettingMoreDetailPage extends HookConsumerWidget {
  const SettingMoreDetailPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.router.popUntil((route) => route.isFirst);
              },
              child: const Text('Setting More Detail'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.router.push(const NoNavigatorRoute());
              },
              child: const Text('ボトムバーなし'),
            ),
          ),
        ],
      )
    );
  }
}