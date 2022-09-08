// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../screens/home/home_screen.dart' as _i1;
import '../screens/home/nav_screen.dart' as _i2;
import '../screens/home/notification_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SideNav.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SideNav());
    },
    NotificationScreen.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.NotificationScreen(),
          transitionsBuilder: _i4.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeScreen.name, path: '/'),
        _i4.RouteConfig(SideNav.name, path: '/side-nav'),
        _i4.RouteConfig(NotificationScreen.name, path: '/notification-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i4.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.SideNav]
class SideNav extends _i4.PageRouteInfo<void> {
  const SideNav() : super(SideNav.name, path: '/side-nav');

  static const String name = 'SideNav';
}

/// generated route for
/// [_i3.NotificationScreen]
class NotificationScreen extends _i4.PageRouteInfo<void> {
  const NotificationScreen()
      : super(NotificationScreen.name, path: '/notification-screen');

  static const String name = 'NotificationScreen';
}
