import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageIndicator extends ConsumerWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          3,
          (index) => Container(
                margin: const EdgeInsets.only(right: 10),
                width: 5.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: index == 0 ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(100)),
              )),
    );
  }
}
