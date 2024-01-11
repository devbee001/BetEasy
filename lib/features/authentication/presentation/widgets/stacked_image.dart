import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StackedImage extends ConsumerWidget {
  const StackedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppTheme.primaryColor,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      'assets/images/first_line.png',
                      scale: 2,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: Image.asset(
                      'assets/images/second_line.png',
                      scale: 2,
                    ),
                  ),
                  Positioned(
                    left: 40,
                    child: Image.asset(
                      'assets/images/third_line.png',
                      scale: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/login_image.png',
              scale: 2,
            ),
          ),
        ],
      ),
    );
  }
}
