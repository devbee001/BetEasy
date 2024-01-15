import 'package:auto_route/annotations.dart';
import 'package:bet_easy/features/home/presentation/notifier/bike_notifier.dart';
import 'package:bet_easy/features/home/presentation/widgets/your_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    ref.read(bikeProvider.notifier).eitherFailureOrBike();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: YourOrderView(),
      ),
    );
  }
}
