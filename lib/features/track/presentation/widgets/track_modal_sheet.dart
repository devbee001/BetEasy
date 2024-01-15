import 'package:bet_easy/features/track/presentation/widgets/package_details.dart';
import 'package:bet_easy/features/track/presentation/widgets/package_eta.dart';
import 'package:bet_easy/features/track/presentation/widgets/package_history_status.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackModalSheet extends ConsumerStatefulWidget {
  const TrackModalSheet({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TrackModalSheetState();
}

class _TrackModalSheetState extends ConsumerState<TrackModalSheet> {
  final _sheet = GlobalKey();
  final _controller = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
    setState(() {});
  }

  void _onChanged() {
    final currentSize = _controller.size;

    if (currentSize <= 0.05) _collapse();
  }

  void _collapse() => _animateSheet(sheet.snapSizes!.first);

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  void _animateSheet(double size) {
    _controller.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DraggableScrollableSheet(
        key: _sheet,
        initialChildSize: 0.13,
        maxChildSize: 0.8,
        minChildSize: 0,
        expand: true,
        snap: true,
        snapSizes: [60 / constraints.maxHeight, 0.8],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 10.0,
                    spreadRadius: MediaQuery.of(context).size.height * 0.2,
                  ),
                ],
                color: AppTheme.backgroundColor2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 50.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                          color: AppTheme.borderColor3,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const PackageETA(),
                      Space.h(30),
                      const PackageDetails(),
                      Space.h(24),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('History', style: AppTheme.titleRegular),
                        ],
                      ),
                      Space.h(10),
                      const PackageHistoryStatus()
                    ],
                  ),
                ),
              ));
        },
      );
    });
  }
}
