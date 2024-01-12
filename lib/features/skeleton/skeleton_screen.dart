import 'package:bet_easy/features/skeleton/widgets/skeleton_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Skeleton extends ConsumerWidget {
  const Skeleton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> pages = [
      Container(),
      const Material(),
    ];
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: const SkeletonNavigationBar(),
    );
  }
}
