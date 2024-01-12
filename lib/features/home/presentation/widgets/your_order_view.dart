import 'package:bet_easy/features/home/presentation/widgets/your_order_view_widgets.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class YourOrderView extends ConsumerWidget {
  const YourOrderView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const HomeHeader(),
        Space.h(
          20,
        ),
        const HomeGreeting(),
        Space.h(
          30,
        ),
        const BikeView(),
        Space.h(20),
        const BikeViewPageIndicator(),
        Space.h(25),
        const OrderSection(),
        Space.h(20),
        const Footer()
      ],
    );
  }
}
