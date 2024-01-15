import 'package:auto_route/annotations.dart';
import 'package:bet_easy/features/home/presentation/widgets/track_now_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class TrackScreen extends ConsumerWidget {
  const TrackScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: TrackNowView(),
      ),
    );
  }
}
