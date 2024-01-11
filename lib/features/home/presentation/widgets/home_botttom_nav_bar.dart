import 'package:bet_easy/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

class HomeBottomNavigationBar extends ConsumerWidget {
  const HomeBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index) {},
        unselectedItemColor: AppTheme.borderColor,
        selectedItemColor: AppTheme.backgroundColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.send),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.setting),
            label: 'Setting',
          ),
        ]);
  }
}
