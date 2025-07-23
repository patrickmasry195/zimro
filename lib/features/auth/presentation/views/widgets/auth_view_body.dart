import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimro/core/utils/app_backgrounds.dart';
import 'package:zimro/core/utils/app_router.dart';
import 'package:zimro/features/auth/presentation/views/widgets/auth_text.dart';
import 'package:zimro/features/auth/presentation/views/widgets/login_button.dart';
import 'package:zimro/core/widgets/custom_button.dart';

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
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  buttonName: "Sign Up",
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSignUpView);
                  },
                ),
              ),
              SizedBox(height: 16),
              Align(alignment: Alignment.center, child: LoginButton()),
            ],
          ),
        ),
      ],
    );
  }
}
