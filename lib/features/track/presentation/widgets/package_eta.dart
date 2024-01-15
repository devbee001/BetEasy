import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_notifier.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageETA extends ConsumerWidget {
  const PackageETA({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BikeEntity? bike = ref.watch(bikeProvider).bikeEntity;
    Failure? failure = ref.watch(bikeProvider).failure;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Estimates arrives in',
              style: AppTheme.bodyRegular.copyWith(
                height: 0,
                color: AppTheme.textColor5,
              ),
            ),
            failure != null
                ? Text(failure.errorMessage)
                : bike != null
                    ? Text(
                        bike.eta,
                        style: AppTheme.titleRegular.copyWith(fontSize: 24),
                      )
                    : const CustomLoader()
          ],
        ),
        const Spacer(),
        Row(
          children: List.generate(
              2,
              (index) => Container(
                    margin: EdgeInsets.only(right: 5.w),
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: AppTheme.backgroundColor,
                        shape: BoxShape.circle),
                  )),
        )
      ],
    );
  }
}
