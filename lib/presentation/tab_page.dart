import 'package:app_rputer/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

@RoutePage()
class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(      
      routes: const [      
        HomeRoute(),      
        ProfileRoute(),      
        SettingAutoRouterRoute(),      
      ],      
      bottomNavigationBuilder: (_, tabsRouter) {      
        return BottomNavigationBar(      
          currentIndex: tabsRouter.activeIndex,      
          onTap: tabsRouter.setActiveIndex,      
          items: const [      
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',), 
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile',),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting',),
          ],      
        );      
      },      
    );      
  }
}