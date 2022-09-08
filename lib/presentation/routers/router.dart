import 'package:auto_route/auto_route.dart';
import 'package:lox_corporate_services/presentation/screens/app_nav.dart';
import 'package:lox_corporate_services/presentation/screens/auth/auth.dart';
import 'package:lox_corporate_services/presentation/screens/home/search/payment_message.dart';
import 'package:lox_corporate_services/presentation/screens/home/search/search.dart';
import '../screens/intro/intro.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'screen,route',
  routes: <AutoRoute>[
    AutoRoute(page: IntroScreen, initial: true),
    CustomRoute(
      page: LoginScreen,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: SingUpScreen,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: AppNav,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    CustomRoute(
      page: SearchScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: NuresProfileScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AppointmentScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: ShedueAppointmentScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: PaymentScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: PaymentMessage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AppointmentScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
