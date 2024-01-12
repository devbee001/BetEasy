import 'package:bet_easy/features/home/presentation/pages/home_screen.dart';
import 'package:bet_easy/features/skeleton/widgets/skeleton_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Skeleton extends ConsumerWidget {
  const Skeleton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(child: HomeScreen()),
      bottomNavigationBar: SkeletonNavigationBar(),
    );
  }
}
