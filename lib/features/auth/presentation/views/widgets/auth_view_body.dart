import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_backgrounds.dart';
import 'package:zimro/features/auth/presentation/views/widgets/auth_text.dart';
import 'package:zimro/features/auth/presentation/views/widgets/login_button.dart';
import 'package:zimro/features/auth/presentation/views/widgets/signup_button.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackgrounds.authBackground,
        SafeArea(
          child: Column(
            children: [
              AuthText(),
              SizedBox(height: 40),
              SignUpButton(),
              SizedBox(height: 16),
              LoginButton(),
            ],
          ),
        ),
      ],
    );
  }
}
