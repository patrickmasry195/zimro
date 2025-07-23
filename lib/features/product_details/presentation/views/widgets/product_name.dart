import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Women’s levi’s denims",
          style: AppTextStyles.title3SemiBold.copyWith(color: Colors.black),
        ),
        Text(
          "\$82.99",
          style: AppTextStyles.title3SemiBold.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
