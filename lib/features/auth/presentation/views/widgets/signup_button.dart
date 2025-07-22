import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

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
        onPressed: () {},
        child: Text(
          "Sign Up",
          style: AppTextStyles.bodyMedium.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
