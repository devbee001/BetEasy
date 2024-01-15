import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_notifier.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageIdContainer extends ConsumerWidget {
  const PackageIdContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BikeEntity? bike = ref.watch(bikeProvider).bikeEntity;
    Failure? failure = ref.watch(bikeProvider).failure;
    return Container(
      width: double.infinity,
      height: 60.h,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppTheme.primaryColor,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
            child: failure != null
                ? const Text('Error')
                : bike != null
                    ? Text(
                        bike.orderReceipt,
                        style: AppTheme.bodyRegular,
                      )
                    : const CustomLoader()),
      ),
    );
  }
}
