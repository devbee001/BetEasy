import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackScreen extends ConsumerStatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  TrackScreenState createState() => TrackScreenState();
}

class TrackScreenState extends ConsumerState<TrackScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/images/track_map.png',
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/track_line.png',
              scale: 2,
            ),
          ),
          Align(
            alignment: const Alignment(0.82, -0.2),
            child: Image.asset(
              'assets/images/track_pos.png',
              scale: 2,
            ),
          ),
          Align(
            alignment: const Alignment(-0.8, 0.14),
            child: Image.asset(
              'assets/images/start_pos.png',
              scale: 2,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
              right: 25.w,
              bottom: 30.h,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    )),
                SizedBox(
                  width: 49.w,
                ),
                const Text(
                  'Tracking Details',
                  style: AppTheme.titleRegular,
                )
              ],
            ),
          ),
          const PackageIdContainer(),
          const TrackModalSheet()
        ],
      )),
    );
  }
}

class PackageIdContainer extends ConsumerWidget {
  const PackageIdContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: 60.h,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppTheme.primaryColor,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Center(
            child: Text(
          'SCPRTEUIWOITY',
          style: AppTheme.bodyRegular,
        )),
      ),
    );
  }
}

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
        initialChildSize: 0.1,
        maxChildSize: 0.8,
        minChildSize: 0,
        expand: true,
        snap: true,
        snapSizes: [60 / constraints.maxHeight, 0.5],
        controller: _controller,
        builder: (BuildContext context, ScrollController scrollController) {
          return DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
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
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Estimates arrives in'),
                              Text(
                                '2h 40m',
                                style: AppTheme.titleRegular
                                    .copyWith(fontSize: 24),
                              )
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: List.generate(
                                2,
                                (index) => Container(
                                      margin: EdgeInsets.only(right: 5.w),
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                    )),
                          )
                        ],
                      ),
                      Space.h(30),
                      Container(
                        padding: const EdgeInsets.all(24),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppTheme.primaryColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              3,
                              (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sukabunmi, Indonesia',
                                        style: AppTheme.titleRegular
                                            .copyWith(fontSize: 16),
                                      ),
                                      Space.h(10),
                                      Text(
                                        'No receipt: SCPRTYWUIOW',
                                        style: AppTheme.bodyRegular.copyWith(
                                            height: 0,
                                            color: AppTheme.textColor1),
                                      ),
                                      index == 2
                                          ? const SizedBox.shrink()
                                          : const Divider(
                                              thickness: 0.3,
                                            )
                                    ],
                                  )),
                        ),
                      ),
                      Space.h(24),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('History', style: AppTheme.titleRegular),
                        ],
                      ),
                      Space.h(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: AppTheme.primaryColor,
                                child: Text(
                                  "🚚",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Space.w(20),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Package in Progress'),
                                  Text('Bali Indonesia'),
                                ],
                              ),
                              const Spacer(),
                              const Text('12:40 PM')
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.w),
                            height: 20.h,
                            width: 1.w,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: AppTheme.primaryColor,
                                child: Text(
                                  "🚚",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Space.w(20),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Package in Progress'),
                                  Text('Bali Indonesia'),
                                ],
                              ),
                              const Spacer(),
                              const Text('12:40 PM')
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.w),
                            height: 20.h,
                            width: 1.w,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: AppTheme.primaryColor,
                                child: Text(
                                  "🚚",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Space.w(20),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Package in Progress'),
                                  Text('Bali Indonesia'),
                                ],
                              ),
                              const Spacer(),
                              const Text('12:40 PM')
                            ],
                          ),
                          // ... Add more stages as needed
                        ],
                      )
                    ],
                  ),
                ),
              ));
        },
      );
    });
  }
}

//  CustomScrollView(
//               controller: scrollController,
//               slivers: [
//                 SliverToBoxAdapter(
//                   child: Container(
//                     margin: const EdgeInsets.only(right: 50),
//                     width: 30.w,
//                     height: 5.h,
//                     decoration: BoxDecoration(
//                       color: AppTheme.backgroundColor,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//                 SliverList.list(
//                   children: [
//                     Container(
//                       width: 30.w,
//                       height: 5.h,
//                       decoration: BoxDecoration(
//                         color: AppTheme.backgroundColor,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     const TrackSheetContent(),
//                   ],
//                 ),
//               ],
//             ),