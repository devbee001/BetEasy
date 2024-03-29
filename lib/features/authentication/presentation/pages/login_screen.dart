import 'package:auto_route/auto_route.dart';
import 'package:bet_easy/features/authentication/presentation/widgets/auth_rich_text.dart';
import 'package:bet_easy/features/authentication/presentation/widgets/page_indicator.dart';
import 'package:bet_easy/features/authentication/presentation/widgets/stacked_image.dart';
import 'package:bet_easy/features/authentication/presentation/widgets/welcome_note.dart';
import 'package:bet_easy/shared/routes/app_router.gr.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_buttom.dart';

import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              color: AppTheme.primaryColor,
              child: Column(
                children: [
                  const StackedImage(),
                  Space.h(
                    70,
                  ),
                  const WelcomeNote(),
                  Space.h(
                    10,
                  ),
                  const PageIndicator(),
                  Space.h(
                    45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: CustomButton(
                      btnText: 'Login with Google',
                      leading: true,
                      onPressed: () {
                        context.router.replace(const Skeleton());
                      },
                    ),
                  ),
                  Space.h(
                    20,
                  ),
                  const AuthenticationRichText(),
                ],
              ))),
    );
  }
}
