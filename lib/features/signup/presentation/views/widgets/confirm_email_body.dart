import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/core/widgets/custom_button.dart';

class ConfirmEmailBody extends StatelessWidget {
  const ConfirmEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Check your email", style: AppTextStyles.title2Bold),
            Image.asset(AssetsData.confirmEmail, height: 375),
            Text(
              "We sent an email to zimrofashion@gmail.com to",
              style: AppTextStyles.bodyMedium,
            ),
            Text("verify your account", style: AppTextStyles.bodyMedium),
            SizedBox(height: 32),
            CustomButton(buttonName: "Open email", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
