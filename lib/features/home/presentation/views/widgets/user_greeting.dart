import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome", style: AppTextStyles.headlineMedium),
          Text("zimro store!", style: AppTextStyles.title2Bold),
        ],
      ),
    );
  }
}