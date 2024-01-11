import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class WelcomeNote extends StatelessWidget {
  const WelcomeNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome Bikes to E-Bikes',
          style: AppTheme.titleLarge,
        ),
        Text("Buying Electric bikes just got a lot easier, Try us today.",
            style: AppTheme.bodyRegular.copyWith(color: AppTheme.textColor1)),
      ],
    );
  }
}
