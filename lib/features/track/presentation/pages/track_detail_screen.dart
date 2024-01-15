import 'package:auto_route/annotations.dart';
import 'package:bet_easy/features/track/presentation/widgets/package_id_container.dart';
import 'package:bet_easy/features/track/presentation/widgets/track_line.dart';
import 'package:bet_easy/features/track/presentation/widgets/track_modal_sheet.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class TrackDetailScreen extends ConsumerStatefulWidget {
  const TrackDetailScreen({Key? key}) : super(key: key);

  @override
  TrackDetailScreenState createState() => TrackDetailScreenState();
}

class TrackDetailScreenState extends ConsumerState<TrackDetailScreen> {
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
          const Align(alignment: Alignment.center, child: TrackLine()),
          const TrackModalSheet()
        ],
      )),
    );
  }
}
