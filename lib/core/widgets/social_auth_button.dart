import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.logo,
    required this.providerName,
  });

  final String logo;
  final String providerName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 343,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, height: 20),
            SizedBox(width: 20),
            Text(
              providerName,
              style: AppTextStyles.bodyMedium.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
