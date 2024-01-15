import 'package:auto_route/auto_route.dart';
import 'package:bet_easy/features/skeleton/widgets/skeleton_nav_bar.dart';
import 'package:bet_easy/shared/routes/app_router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Skeleton extends ConsumerWidget {
  const Skeleton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(child: child),
          bottomNavigationBar: const SkeletonNavigationBar(),
        );
      },
    );
  }
}
