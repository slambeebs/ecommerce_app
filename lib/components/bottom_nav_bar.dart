// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      tabMargin: const EdgeInsets.only(bottom: 30),
      color: Colors.grey[400],
      activeColor: Colors.grey[700],
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange: (value) => onTabChange!(value),
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Shop',
          ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
          )
      ]
    );
  }
}