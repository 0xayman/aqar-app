import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: const [
        Iconsax.home,
        Iconsax.search_normal,
      ],
      activeIndex: 0,
      backgroundColor: Colors.grey.shade200,
      activeColor: Colors.blue.shade900,
      inactiveColor: Colors.grey.shade500,
      gapLocation: GapLocation.none,
      leftCornerRadius: 30.r,
      rightCornerRadius: 30.r,
      gapWidth: 0,
      onTap: (index) {},
    );
  }
}
