import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../provider/tab_provider.dart';

//final tabProvider = Provider.of<TabProvider>(context);

class MyBottomNavBar extends StatelessWidget {

  // void Function(int)? onTabChange;
  // MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:20.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 8,
          onTabChange: (value) => tabProvider.changeTab(value),
          selectedIndex: tabProvider.currentIndex,
          // onTabChange: (value) => MyBottomNavBar(),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.category,
              text: 'Category',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
