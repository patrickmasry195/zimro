import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zimro/constants.dart';
import 'package:zimro/core/utils/app_router.dart';

void main() {
  runApp(const Zimro());
}

class Zimro extends StatelessWidget {
  const Zimro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.jostTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
