import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PackageDetails extends ConsumerWidget {
  const PackageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
            3,
            (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sukabunmi, Indonesia',
                      style: AppTheme.titleRegular.copyWith(fontSize: 16),
                    ),
                    Space.h(10),
                    Text(
                      'No receipt: SCPRTYWUIOW',
                      style: AppTheme.bodyRegular
                          .copyWith(height: 0, color: AppTheme.textColor1),
                    ),
                    index == 2
                        ? const SizedBox.shrink()
                        : const Divider(
                            thickness: 0.3,
                          )
                  ],
                )),
      ),
    );
  }
}
