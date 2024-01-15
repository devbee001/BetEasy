import 'package:auto_route/auto_route.dart';
import 'package:bet_easy/shared/routes/app_router.gr.dart';
import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_buttom.dart';
import 'package:bet_easy/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackingHistory extends ConsumerWidget {
  const TrackingHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.w),
          child: const Text(
            'Tracking history',
            style: AppTheme.titleRegular,
          ),
        ),
      ],
    );
  }
}

class TrackYourPackageContainer extends ConsumerWidget {
  const TrackYourPackageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
      ),
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          const HomeStackedImage(),
          Space.h(10),
          const HomeFormField(),
          Space.h(10),
          const HomeCustomButton(),
          Space.h(10),
        ],
      ),
    );
  }
}

class DeliveryStatusTile extends ConsumerWidget {
  const DeliveryStatusTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
              title: const Text(
                'SCPRREJWUS',
                style: AppTheme.bodyMedium,
              ),
              subtitle: Text(
                'in the process',
                style:
                    AppTheme.bodyRegular.copyWith(color: AppTheme.textColor2),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
              leading: Container(
                width: 50.w,
                height: 50.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.secondaryColor,
                    image: DecorationImage(
                        scale: 2,
                        image: AssetImage('assets/images/icon-google.png'))),
              ),
              contentPadding: const EdgeInsets.only(left: 15, right: 15));
        });
  }
}

class HomeCustomButton extends ConsumerWidget {
  const HomeCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: CustomButton(
        trailingWidth: 149.w,
        btnText: 'Track Now',
        onPressed: () {
          context.router.push(const TrackDetailRoute());
        },
        trailing: true,
      ),
    );
  }
}

class HomeFormField extends ConsumerWidget {
  const HomeFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
          enabled: false,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppTheme.backgroundColor,
              ), // Customized enabled border
              borderRadius: BorderRadius.circular(50.0),
            ),
            hintText: 'Enter the receipt number',
            contentPadding: const EdgeInsets.only(top: 10.0, left: 20),
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(50.0), // Adjust the radius as needed
            ),
          )),
    );
  }
}

class HomeStackedImage extends ConsumerWidget {
  const HomeStackedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(20.r)),
      height: 140.h,
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
              alignment: const Alignment(-1, 1),
              child: Container(
                margin: EdgeInsets.only(left: 22.w),
                height: 60.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Track Your Package',
                      style: AppTheme.titleRegular.copyWith(
                        color: AppTheme.textColor3,
                      ),
                    ),
                    SizedBox(
                      width: 251.w,
                      child: const Text(
                        "Enter the receipt number that has been given by the officer",
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
