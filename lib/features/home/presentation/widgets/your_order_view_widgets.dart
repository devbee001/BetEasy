import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:bet_easy/shared/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Footer extends ConsumerWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.w,
        right: 25.w,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/bike_sketch.png',
            scale: 2,
          ),
          const Spacer(),
          SizedBox(
            width: 166.w,
            child: Text("You too can join our Elite squad of E-bikers",
                style: AppTheme.bodyRegular
                    .copyWith(height: 0, color: AppTheme.textColor2)),
          )
        ],
      ),
    );
  }
}

class OrderSection extends ConsumerWidget {
  const OrderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppTheme.primaryColor,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 27, bottom: 26, right: 27, left: 32),
      child: Row(children: [
        SizedBox(
            width: 106.w,
            child: Text(
              'Gotten Your E-Bike yet?',
              style: AppTheme.bodyRegular
                  .copyWith(color: AppTheme.textColor1, height: 0),
            )),
        const Spacer(),
        CustomButton(
            leadingWidth: 15,
            trailing: true,
            width: 183,
            onPressed: () {},
            btnText: 'Your Orders'),
      ]),
    );
  }
}

class BikeViewPageIndicator extends ConsumerWidget {
  const BikeViewPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SmoothPageIndicator(
      controller: PageController(),
      count: 4,
      effect: const SlideEffect(
          spacing: 8.0,
          dotWidth: 5.0,
          dotHeight: 5.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5,
          dotColor: AppTheme.borderColor3,
          activeDotColor: AppTheme.backgroundColor),
    );
  }
}

class BikeView extends ConsumerWidget {
  const BikeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 255,
      height: 265,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.secondaryColor,
        image: const DecorationImage(
            scale: 2, image: AssetImage('assets/images/bike_image.png')),
      ),
    );
  }
}

class HomeGreeting extends ConsumerWidget {
  const HomeGreeting({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Good Morning!',
            style: AppTheme.titleRegular,
          ),
        ],
      ),
    );
  }
}

class HomeHeader extends ConsumerWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  scale: 2,
                  image: AssetImage('assets/images/avatar.png'))),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.secondaryColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(IconlyBold.notification),
            color: AppTheme.borderColor2,
          ),
        )
      ],
    );
  }
}
