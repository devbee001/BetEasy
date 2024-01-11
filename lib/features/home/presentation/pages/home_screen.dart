import 'package:bet_easy/features/home/presentation/widgets/home_botttom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> pages = [
      Container(),
      const Material(),
    ];
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
