import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class NewArrivalsItem extends StatelessWidget {
  const NewArrivalsItem({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productGender,
    required this.productPrice,
  });

  final String productImage;
  final String productName;
  final String productGender;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Image.asset(productImage, fit: BoxFit.cover, height: 117),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName, style: AppTextStyles.headlineSemiBold),
            Text(productGender, style: AppTextStyles.headlineRegular),
            SizedBox(height: 8),
            Text(productPrice, style: AppTextStyles.title3SemiBold),
          ],
        ),
      ],
    );
  }
}
