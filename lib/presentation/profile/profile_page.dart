import 'package:app_rputer/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProfilePage extends StatefulHookConsumerWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}
class _ProfilePageState extends ConsumerState<ProfilePage> with AutoRouteAwareStateMixin<ProfilePage> {
  @override
  void didChangeTabRoute(TabPageRoute? route) {
    print('あああ${route}');
    print('didInitTabRoute');
  }

  @override                
  void dispose() {                
    super.dispose();
    print('dispose');               
  }      
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              context.router.push(HomeRoute());
            },
            child: const Text('Home'),
          ),
        ),
      )
    );
  }
}