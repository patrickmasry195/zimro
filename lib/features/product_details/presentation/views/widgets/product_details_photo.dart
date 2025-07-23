import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';

class ProductDetailsPhoto extends StatelessWidget {
  const ProductDetailsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Image.asset(
        AssetsData.productDetails,
        fit: BoxFit.contain,
        height: 500,
        width: 600,
      ),
    );
  }
}
