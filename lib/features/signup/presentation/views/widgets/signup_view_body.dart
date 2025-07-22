import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimro/core/utils/app_router.dart';
import 'package:zimro/core/utils/app_text_styles.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/core/widgets/custom_button.dart';
import 'package:zimro/core/widgets/email_text_field.dart';
import 'package:zimro/core/widgets/social_auth_button.dart';
import 'package:zimro/features/signup/presentation/views/widgets/account_check.dart';
import 'package:zimro/features/signup/presentation/views/widgets/service_policy.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 33),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset(AssetsData.mainLogo, height: 71)],
                  ),
                  SizedBox(height: 32),
                  SocialAuthButton(
                    logo: AssetsData.appleIcon,
                    providerName: "Sign up with Apple",
                  ),
                  SizedBox(height: 12),
                  SocialAuthButton(
                    logo: AssetsData.googleIcon,
                    providerName: "Google",
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 169, 12),
                    child: Text(
                      "What's your work email?",
                      style: AppTextStyles.bodyMedium,
                    ),
                  ),
                  EmailTextField(),
                  SizedBox(height: 22),
                  SizedBox(
                    width: 343,
                    child: CustomButton(
                      buttonName: 'Sign Up',
                      onPressed: () {
                        GoRouter.of(context).go(AppRouter.kConfirmEmail);
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  AccountCheck(),
                  ServicePolicy(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
