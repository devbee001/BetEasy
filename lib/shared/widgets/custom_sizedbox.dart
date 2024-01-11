import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space {
  static Widget h(double height) => SizedBox(
        height: height.h,
      );
  static Widget w(double width) => SizedBox(
        width: width.w,
      );
  static Widget b(double height, double width) => SizedBox(
        height: height.h,
        width: width.w,
      );
}
