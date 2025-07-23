import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All collection", style: AppTextStyles.subheadlineSemiBold),
        TextButton.icon(
          onPressed: () {},
          label: Text(
            'See all',
            style: AppTextStyles.caption1SemiBold.copyWith(color: Colors.white),
          ),
          icon: Icon(IconlyLight.arrow_right_2, size: 12, color: Colors.white),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
