import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.secondLogo, height: 18),
        CircleAvatar(backgroundImage: AssetImage(AssetsData.avatar)),
      ],
    );
  }
}
