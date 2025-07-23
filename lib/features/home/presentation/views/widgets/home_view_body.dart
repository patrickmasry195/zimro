import 'package:flutter/material.dart';
import 'package:zimro/features/home/presentation/views/widgets/all_collection_listview.dart';
import 'package:zimro/features/home/presentation/views/widgets/all_products_grid.dart';
import 'package:zimro/features/home/presentation/views/widgets/banner_slider.dart';
import 'package:zimro/features/home/presentation/views/widgets/categories.dart';
import 'package:zimro/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:zimro/features/home/presentation/views/widgets/new_arrivals_craousel.dart';
import 'package:zimro/features/home/presentation/views/widgets/separator.dart';
import 'package:zimro/features/home/presentation/views/widgets/user_greeting.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  CustomAppBar(),
                  SizedBox(height: 16),
                  UserGreeting(),
                  SizedBox(height: 16),
                  BannerSlider(),
                  SizedBox(height: 22),
                  Categories(),
                  SizedBox(height: 24),
                  Separator(preTextName: 'All collection'),
                  GestureDetector(onTap: () {
                    
                  }, child: AllCollectionListview()),
                  SizedBox(height: 24),
                  Separator(preTextName: 'New arrivals'),
                  NewArrivalsCraousel(),
                  Separator(preTextName: 'All Product'),
                ],
              ),
            ),
          ),
          AllProductsGrid(),
        ],
      ),
    );
  }
}
