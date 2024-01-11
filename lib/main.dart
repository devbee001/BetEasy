import 'package:bet_easy/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: AppTheme.themeData,
              home: const LoginScreen());
        });
  }
}

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  const ComplexImage(),
                  Space.h(
                    97,
                  ),
                  const Text('Welcome Bikes to E-Bikes'),
                  const Text(
                    "Buying Electric bikes just got a lot easier, Try us today.",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff96823d),
                      height: 48 / 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 5.w,
                              height: 5.h,
                              decoration: BoxDecoration(
                                  color:
                                      index == 0 ? Colors.black : Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                            )),
                  ),
                  Space.h(
                    48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFFCE23)),
                          //   foregroundColor: MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.r))),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10)),
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
                                      image: AssetImage(
                                          'assets/images/icon-google.png'))),
                            ),
                            const Text('Login With Google'),
                          ],
                        )),
                  ),
                  Space.h(
                    48,
                  ),
                  const Text('Don\'t have an account? Sign Up'),
                ],
              ))),
    );
  }
}

class Space {
  static Widget h(double height) => SizedBox(
        height: height,
      );
  static Widget w(double width) => SizedBox(
        width: width,
      );
  static Widget b(double height, double width) => SizedBox(
        height: height,
        width: width,
      );
}

class ComplexImage extends StatelessWidget {
  const ComplexImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: MediaQuery.of(context).size.height * 0.5,
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
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/login_image.png',
              scale: 2,
            ),
          ),
        ],
      ),
    );
  }
}
