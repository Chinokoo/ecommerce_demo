import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;

  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange(value),
        tabs: const [
          // nav button -  Shop button icon
          GButton(
            icon: Icons.home,
            text: " Shop",
          ),
          //nav button - Search button icon
          GButton(icon: Icons.shopping_basket_rounded, text: " Cart"),
        ]);
  }
}
