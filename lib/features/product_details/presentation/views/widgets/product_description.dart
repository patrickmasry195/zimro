import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Levi’s denim will perfectly complement your image. \nthis denim is suitable for both classic style  and for \ncasual style.",
      style: AppTextStyles.calloutRegular.copyWith(color: Colors.black),
    );
  }
}
