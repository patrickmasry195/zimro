import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/constants.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kPrimaryColor,
      selectedItemColor: Color(0xffC9C52E),
      unselectedItemColor: Colors.white,
      selectedLabelStyle: AppTextStyles.caption3Medium.copyWith(
        color: Color(0xffC9C52E),
      ),
      unselectedLabelStyle: AppTextStyles.caption3Medium.copyWith(
        color: Colors.white,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(icon: Icon(IconlyLight.bag), label: 'Cart'),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.heart),
          label: 'Wishllist',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.notification),
          label: 'Notification',
        ),
      ],
    );
  }
}
