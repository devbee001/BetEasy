import 'package:bet_easy/features/track/presentation/widgets/package_id_container.dart';
import 'package:bet_easy/features/track/presentation/widgets/track_modal_sheet.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackScreen extends ConsumerStatefulWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  TrackScreenState createState() => TrackScreenState();
}

class TrackScreenState extends ConsumerState<TrackScreen> {
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
          LayoutBuilder(builder: (context, constraints) {
            return Align(
              alignment: Alignment(0.8 * constraints.maxWidth / 411, -0.2),
              child: Image.asset(
                'assets/images/track_pos.png',
                scale: 2,
              ),
            );
          }),
          LayoutBuilder(builder: (context, constraints) {
            return Align(
              alignment: Alignment(-0.72 * constraints.maxWidth / 411, 0.14),
              child: Image.asset(
                'assets/images/start_pos.png',
                scale: 2,
              ),
            );
          }),
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
