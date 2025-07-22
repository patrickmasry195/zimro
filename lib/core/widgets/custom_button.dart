import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.onPressed});

  final String buttonName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: AppTextStyles.bodyMedium.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
