// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/export_pages.dart' as _i3;

class MyAppRouter extends _i1.RootStackRouter {
  MyAppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    DetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<DetailRouteArgs>();
          return _i3.DetailPage(args.id, key: args.key);
        }),
    ThirdRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.ThirdPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(DetailRoute.name, path: '/detail-page'),
        _i1.RouteConfig(ThirdRoute.name, path: '/third-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class DetailRoute extends _i1.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({required int id, _i2.Key? key})
      : super(name,
            path: '/detail-page', args: DetailRouteArgs(id: id, key: key));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({required this.id, this.key});

  final int id;

  final _i2.Key? key;
}

class ThirdRoute extends _i1.PageRouteInfo {
  const ThirdRoute() : super(name, path: '/third-page');

  static const String name = 'ThirdRoute';
}
