// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/app_nav.dart' as _i3;
import '../screens/auth/auth.dart' as _i2;
import '../screens/home/search/payment_message.dart' as _i5;
import '../screens/home/search/search.dart' as _i4;
import '../screens/intro/intro.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    IntroScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.IntroScreen());
    },
    LoginScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    SingUpScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SingUpScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    AppNav.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.AppNav(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    SearchScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.SearchScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    NuresProfileScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.NuresProfileScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AppointmentScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.AppointmentScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ShedueAppointmentScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ShedueAppointmentScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PaymentScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.PaymentScreen(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    PaymentMessage.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.PaymentMessage(),
          transitionsBuilder: _i6.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(IntroScreen.name, path: '/'),
        _i6.RouteConfig(LoginScreen.name, path: '/login-screen'),
        _i6.RouteConfig(SingUpScreen.name, path: '/sing-up-screen'),
        _i6.RouteConfig(AppNav.name, path: '/app-nav'),
        _i6.RouteConfig(SearchScreen.name, path: '/search-screen'),
        _i6.RouteConfig(NuresProfileScreen.name, path: '/nures-profile-screen'),
        _i6.RouteConfig(AppointmentScreen.name, path: '/appointment-screen'),
        _i6.RouteConfig(ShedueAppointmentScreen.name,
            path: '/shedue-appointment-screen'),
        _i6.RouteConfig(PaymentScreen.name, path: '/payment-screen'),
        _i6.RouteConfig(PaymentMessage.name, path: '/payment-message'),
        _i6.RouteConfig(AppointmentScreen.name, path: '/appointment-screen')
      ];
}

/// generated route for
/// [_i1.IntroScreen]
class IntroScreen extends _i6.PageRouteInfo<void> {
  const IntroScreen() : super(IntroScreen.name, path: '/');

  static const String name = 'IntroScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i6.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login-screen');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i2.SingUpScreen]
class SingUpScreen extends _i6.PageRouteInfo<void> {
  const SingUpScreen() : super(SingUpScreen.name, path: '/sing-up-screen');

  static const String name = 'SingUpScreen';
}

/// generated route for
/// [_i3.AppNav]
class AppNav extends _i6.PageRouteInfo<void> {
  const AppNav() : super(AppNav.name, path: '/app-nav');

  static const String name = 'AppNav';
}

/// generated route for
/// [_i4.SearchScreen]
class SearchScreen extends _i6.PageRouteInfo<void> {
  const SearchScreen() : super(SearchScreen.name, path: '/search-screen');

  static const String name = 'SearchScreen';
}

/// generated route for
/// [_i4.NuresProfileScreen]
class NuresProfileScreen extends _i6.PageRouteInfo<void> {
  const NuresProfileScreen()
      : super(NuresProfileScreen.name, path: '/nures-profile-screen');

  static const String name = 'NuresProfileScreen';
}

/// generated route for
/// [_i4.AppointmentScreen]
class AppointmentScreen extends _i6.PageRouteInfo<void> {
  const AppointmentScreen()
      : super(AppointmentScreen.name, path: '/appointment-screen');

  static const String name = 'AppointmentScreen';
}

/// generated route for
/// [_i4.ShedueAppointmentScreen]
class ShedueAppointmentScreen extends _i6.PageRouteInfo<void> {
  const ShedueAppointmentScreen()
      : super(ShedueAppointmentScreen.name, path: '/shedue-appointment-screen');

  static const String name = 'ShedueAppointmentScreen';
}

/// generated route for
/// [_i4.PaymentScreen]
class PaymentScreen extends _i6.PageRouteInfo<void> {
  const PaymentScreen() : super(PaymentScreen.name, path: '/payment-screen');

  static const String name = 'PaymentScreen';
}

/// generated route for
/// [_i5.PaymentMessage]
class PaymentMessage extends _i6.PageRouteInfo<void> {
  const PaymentMessage() : super(PaymentMessage.name, path: '/payment-message');

  static const String name = 'PaymentMessage';
}
