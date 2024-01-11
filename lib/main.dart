import 'package:bet_easy/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.themeData,
        home: const LoginScreen());
  }
}

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: AppTheme.primaryColor,
          child: const Column(
            children: [
              Text('Login'),
              Text('Email'),
              Text('Password'),
              Text('Forgot Password'),
              Text('Login'),
              Text('Sign Up'),
            ],
          )),
    );
  }
}
