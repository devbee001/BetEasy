import 'package:bet_easy/features/home/business/entities/bike_entity.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_notifier.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_loader.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageHistoryStatus extends ConsumerWidget {
  const PackageHistoryStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BikeEntity? bike = ref.watch(bikeProvider).bikeEntity;
    return bike != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppTheme.primaryColor,
                    child: Text(
                      "🚚",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Space.w(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'In Delivery',
                        style: AppTheme.titleRegular.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        bike.inDelivery,
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor5),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('00:00 PM',
                      style: AppTheme.bodyRegular
                          .copyWith(height: 0, color: AppTheme.textColor5))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w),
                height: 20.h,
                width: 1.w,
                color: Colors.grey,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppTheme.secondaryColor,
                    child: Text(
                      "📬",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Space.w(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transit-Sending City',
                        style: AppTheme.titleRegular.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        bike.transit,
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor5),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('21:00 PM',
                      style: AppTheme.bodyRegular
                          .copyWith(height: 0, color: AppTheme.textColor5))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 25.w),
                height: 20.h,
                width: 1.w,
                color: Colors.grey,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: AppTheme.secondaryColor,
                    child: Text(
                      "📦",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Space.w(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send from Sukabumi',
                        style: AppTheme.titleRegular.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        bike.from,
                        style: AppTheme.bodyRegular
                            .copyWith(height: 0, color: AppTheme.textColor5),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('19:00 PM',
                      style: AppTheme.bodyRegular
                          .copyWith(height: 0, color: AppTheme.textColor5))
                ],
              ),
            ],
          )
        : const CustomLoader();
  }
}
