import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(IconlyLight.plus, color: Colors.black),
        ),
        Text(
          '1',
          style: AppTextStyles.subheadlineSemiBold.copyWith(
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(IconlyLight.plus, color: Colors.black),

          /// minus icon is in pro plan in this package 😥 sorry,
        ),
        SizedBox(width: 24),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(250, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          onPressed: () {},
          label: Text(
            "Add to cart",
            style: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
          ),
          icon: Icon(IconlyLight.bag, color: Colors.white),
          iconAlignment: IconAlignment.start,
        ),
      ],
    );
  }
}
