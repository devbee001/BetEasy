import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
