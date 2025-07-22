import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:zimro/core/utils/app_backgrounds.dart';
import 'package:zimro/core/utils/app_router.dart';
import 'package:zimro/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(Duration(seconds: 4), () {
      GoRouter.of(context).go(AppRouter.kAuthView);
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackgrounds.splashBackground,
        FadeInUpBig(
          child: Center(child: Image.asset(AssetsData.mainLogo, height: 87.02)),
        ),
      ],
    );
  }
}
