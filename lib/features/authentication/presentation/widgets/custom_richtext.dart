import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomRichText extends ConsumerWidget {
  const CustomRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account? ',
          style: AppTheme.bodyRegular.copyWith(color: AppTheme.textColor1),
        ),
        TextSpan(
          text: "SignUp",
          style: AppTheme.bodyMedium.copyWith(color: AppTheme.textColor3),
        ),
      ]),
    );
  }
}
