import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.grey,
          activeColor: Colors.grey.shade700,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: " Shop",
            ),
            GButton(icon: Icons.shopping_basket_rounded, text: " Cart"),
          ]),
    );
  }
}
