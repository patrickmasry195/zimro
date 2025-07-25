import 'package:flutter/material.dart';
import 'package:zimro/features/home/presentation/views/widgets/custom_bottom_navbar.dart';
import 'package:zimro/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
