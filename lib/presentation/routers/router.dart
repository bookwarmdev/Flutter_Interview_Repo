// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/home_screen.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/nav_screen.dart';
import 'package:interview_figma_newstartup/presentation/screens/home/notification_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      page: SideNav,
    ),
    CustomRoute(
      page: NotificationScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 400,
    ),
  ],
)
class $AppRouter {}
