import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends ConsumerWidget {
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final bool leading;
  final bool trailing;
  final double trailingWidth;
  final double leadingWidth;
  final String btnText;
  const CustomButton({
    this.leadingWidth = 0,
    required this.btnText,
    this.trailingWidth = 21,
    this.leading = false,
    this.trailing = false,
    this.height = 50,
    this.width = 327,
    required this.onPressed,
    this.textColor = AppTheme.textColor4,
    this.backgroundColor = AppTheme.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(textColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
          ),
          child: Row(
            children: [
              leading
                  ? Container(
                      margin: const EdgeInsets.only(right: 55),
                      width: 32.w,
                      height: 32.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.secondaryColor,
                          image: DecorationImage(
                              scale: 2,
                              image:
                                  AssetImage('assets/images/icon-google.png'))),
                    )
                  : const SizedBox.shrink(),
              Space.w(leadingWidth),
              Text(
                btnText,
                style: AppTheme.bodyRegular,
              ),
              trailing ? Space.w(trailingWidth) : const SizedBox.shrink(),
              trailing
                  ? const Icon(Icons.arrow_forward_sharp,
                      size: 20, color: AppTheme.textColor4)
                  : const SizedBox.shrink(),
            ],
          )),
    );
  }
}
