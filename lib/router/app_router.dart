import 'package:app_rputer/presentation/profile_page.dart';
import 'package:app_rputer/presentation/setting_page.dart';
import 'package:app_rputer/presentation/tab_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';            

@AutoRouterConfig(replaceInRouteName: 'Page,Route')      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    AutoRoute(page: TabRoute.page, initial: true),      
    AutoRoute(page: SettingRoute.page),
    AutoRoute(page: ProfileRoute.page),
  ];
}