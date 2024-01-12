import 'package:bet_easy/features/home/presentation/widgets/track_now_view.dart';
import 'package:bet_easy/features/home/presentation/widgets/your_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var checker = ' hell';
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: checker != 'gost' ? const TrackNowView() : const YourOrderView(),
      ),
    );
  }
}
