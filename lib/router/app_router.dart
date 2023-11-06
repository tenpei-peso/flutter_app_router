import 'package:app_rputer/presentation/home/home_page.dart';
import 'package:app_rputer/presentation/no_navigator_page.dart';
import 'package:app_rputer/presentation/profile/profile_page.dart';
import 'package:app_rputer/presentation/setting/setting_detail.dart';
import 'package:app_rputer/presentation/setting/setting_more_detail.dart';
import 'package:app_rputer/presentation/setting/setting_page.dart';
import 'package:app_rputer/presentation/tab_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';            

@AutoRouterConfig(replaceInRouteName: 'Page,Route')      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    AutoRoute(
      path: '/tab',
      page: TabRoute.page, 
      initial: true,
      children: [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: ProfileRoute.page
        ),
        AutoRoute(
          page: SettingAutoRouterRoute.page,
          children: [
            AutoRoute(
              page: SettingRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: SettingDetailsAutoRouterRoute.page,
              children: [
                AutoRoute(
                  page: SettingDetailRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: SettingMoreDetailRoute.page,
                ),
              ]
            ),
          ]
        ),
      ],
      ),
      AutoRoute(page: NoNavigatorRoute.page,) 
  ];
}