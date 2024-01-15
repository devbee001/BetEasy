// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:bet_easy/features/authentication/presentation/pages/login_screen.dart'
    as _i3;
import 'package:bet_easy/features/home/presentation/pages/home_navigation_screen.dart'
    as _i1;
import 'package:bet_easy/features/home/presentation/pages/home_screen.dart'
    as _i2;
import 'package:bet_easy/features/skeleton/skeleton_screen.dart' as _i4;
import 'package:bet_easy/features/track/presentation/pages/track_detail_screen.dart'
    as _i5;
import 'package:bet_easy/features/track/presentation/pages/track_screen.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeNavigationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeNavigationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
    Skeleton.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Skeleton(),
      );
    },
    TrackDetailRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TrackDetailScreen(),
      );
    },
    TrackRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TrackScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeNavigationScreen]
class HomeNavigationRoute extends _i7.PageRouteInfo<void> {
  const HomeNavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Skeleton]
class Skeleton extends _i7.PageRouteInfo<void> {
  const Skeleton({List<_i7.PageRouteInfo>? children})
      : super(
          Skeleton.name,
          initialChildren: children,
        );

  static const String name = 'Skeleton';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TrackDetailScreen]
class TrackDetailRoute extends _i7.PageRouteInfo<void> {
  const TrackDetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TrackDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackDetailRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TrackScreen]
class TrackRoute extends _i7.PageRouteInfo<void> {
  const TrackRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TrackRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrackRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
