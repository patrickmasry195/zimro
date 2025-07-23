import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.text,
    required this.backgroundColor,
  });
  final String text;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: AppTextStyles.caption3Regular.copyWith(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.transparent, width: 0),
      ),
    );
  }
}
