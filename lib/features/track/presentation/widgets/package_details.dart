import 'package:bet_easy/core/errors/failure.dart';
import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_notifier.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_loader.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PackageDetails extends ConsumerWidget {
  const PackageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BikeEntity? bike = ref.watch(bikeProvider).bikeEntity;
    Failure? failure = ref.watch(bikeProvider).failure;
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.primaryColor,
      ),
      child: failure != null
          ? Text(failure.errorMessage)
          : bike != null
              ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bike.from,
                        style: AppTheme.titleRegular.copyWith(fontSize: 16),
                      ),
                      Space.h(10),
                      Text(
                        'No receipt: ${bike.orderReceipt}',
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor1),
                      ),
                      const Divider(
                        thickness: 0.3,
                      ),
                      Text(
                        bike.postalFee,
                        style: AppTheme.titleRegular.copyWith(fontSize: 16),
                      ),
                      Space.h(10),
                      Text(
                        'Postal fee',
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor1),
                      ),
                      const Divider(
                        thickness: 0.3,
                      ),
                      Text(
                        bike.inDelivery,
                        style: AppTheme.titleRegular.copyWith(fontSize: 16),
                      ),
                      Space.h(10),
                      Text(
                        'Parcel ${bike.parcelWeight}',
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor1),
                      ),
                    ],
                  )
                ])
              : const CustomLoader(),
    );
  }
}
