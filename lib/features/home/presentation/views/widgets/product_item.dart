import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 5,
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    productImage,
                    height: 156,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(IconlyLight.heart, color: Colors.black),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.yellow,
                    child: Icon(IconlyLight.bag, color: Colors.black, size: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(productName, style: AppTextStyles.caption1SemiBold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(productPrice, style: AppTextStyles.footnoteSemiBold),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
