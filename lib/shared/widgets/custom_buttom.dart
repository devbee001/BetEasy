import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xffFFCE23)),
          //   foregroundColor: MaterialStateProperty.all(Colors.blue),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r))),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 55),
              width: 32.w,
              height: 32.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  image: DecorationImage(
                      scale: 2,
                      image: AssetImage('assets/images/icon-google.png'))),
            ),
            const Text('Login With Google'),
          ],
        ));
  }
}
