import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: MediaQuery.of(context).size.width * 0.9,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          side: BorderSide(width: 1, color: Colors.white),
        ),
        onPressed: () {},
        child: Text(
          'Log in',
          style: AppTextStyles.bodyMedium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
