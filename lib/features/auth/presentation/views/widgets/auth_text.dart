import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class AuthText extends StatelessWidget {
  const AuthText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 515, 136, 0),
          child: Text(
            "The latest clothes \nof the day",
            style: AppTextStyles.title1Bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 6, 113, 0),
          child: Text(
            "A premium online store for Men & women \nfind their stylish choice.",
            style: AppTextStyles.footnoteMedium,
          ),
        ),
      ],
    );
  }
}
