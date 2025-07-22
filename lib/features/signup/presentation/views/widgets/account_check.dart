import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class AccountCheck extends StatelessWidget {
  const AccountCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already use zimro?", style: AppTextStyles.footnoteRegular),
        TextButton(
          onPressed: () {},
          child: Text(
            "Login in",
            style: AppTextStyles.footnoteRegular.copyWith(
              color: Color(0xff979423),
            ),
          ),
        ),
      ],
    );
  }
}
