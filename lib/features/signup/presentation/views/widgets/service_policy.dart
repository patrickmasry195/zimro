import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ServicePolicy extends StatelessWidget {
  const ServicePolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "By signing up you accept the",
          style: AppTextStyles.footnoteRegular.copyWith(
            color: Color(0xff565656),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Term of serivce',
                style: AppTextStyles.footnoteRegular.copyWith(
                  color: Color(0xff979423),
                ),
              ),
            ),
            Text(
              "and",
              style: AppTextStyles.footnoteRegular.copyWith(
                color: Color(0xff565656),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Privacy Policy',
                style: AppTextStyles.footnoteRegular.copyWith(
                  color: Color(0xff979423),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
