import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ProductDetailSeparator extends StatelessWidget {
  const ProductDetailSeparator({super.key, required this.separatorName});
  final String separatorName;
  @override
  Widget build(BuildContext context) {
    return Text(
      separatorName,
      style: AppTextStyles.subheadlineSemiBold.copyWith(color: Colors.black),
    );
  }
}
