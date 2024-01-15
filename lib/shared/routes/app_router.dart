import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: Skeleton.page, children: [
          AutoRoute(page: HomeNavigationRoute.page, children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(page: TrackRoute.page),
          ])
        ]),
        AutoRoute(page: TrackDetailRoute.page),
      ];
}
