import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimro/core/utils/app_router.dart';
import 'package:zimro/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.secondLogo, height: 18),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kProfileView);
          },
          child: CircleAvatar(backgroundImage: AssetImage(AssetsData.avatar)),
        ),
      ],
    );
  }
}
