import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomLoader extends ConsumerWidget {
  const CustomLoader({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: CupertinoActivityIndicator(),
    );
  }
}
