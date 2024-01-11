import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends ConsumerWidget {
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  const CustomButton({
    required this.onPressed,
    this.textColor = AppTheme.textColor4,
    this.backgroundColor = AppTheme.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
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
            Container(
              margin: const EdgeInsets.only(right: 55),
              width: 32.w,
              height: 32.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.secondaryColor,
                  image: DecorationImage(
                      scale: 2,
                      image: AssetImage('assets/images/icon-google.png'))),
            ),
            const Text(
              'Login With Google',
              style: AppTheme.bodyRegular,
            ),
          ],
        ));
  }
}
