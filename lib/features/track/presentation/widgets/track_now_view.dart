import 'package:bet_easy/features/track/presentation/widgets/track_now_view_widgets.dart';
import 'package:bet_easy/features/home/presentation/widgets/your_order_view_widgets.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackNowView extends ConsumerWidget {
  const TrackNowView({
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
        const TrackYourPackageContainer(),
        Space.h(40),
        const TrackingHistory(),
        Space.h(20),
        const DeliveryStatusTile(),
      ],
    );
  }
}
