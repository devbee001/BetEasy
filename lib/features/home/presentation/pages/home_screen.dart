import 'package:bet_easy/features/home/presentation/widgets/home_screen_widgets.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HomeHeader(),
            Space.h(
              20,
            ),
            const HomeGreeting(),
            Space.h(40),
            const BikeView(),
            Space.h(20),
            const BikeViewPageIndicator(),
            Space.h(25),
            const OrderSection(),
            Space.h(20),
            const Footer()
          ],
        ),
      ),
    );
  }
}
