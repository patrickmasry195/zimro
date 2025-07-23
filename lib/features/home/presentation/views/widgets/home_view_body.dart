import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/home/presentation/views/widgets/banner_slider.dart';
import 'package:zimro/features/home/presentation/views/widgets/categories.dart';
import 'package:zimro/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:zimro/features/home/presentation/views/widgets/product_item.dart';
import 'package:zimro/features/home/presentation/views/widgets/separator.dart';
import 'package:zimro/features/home/presentation/views/widgets/user_greeting.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final List<ProductItem> products = [
    ProductItem(
      productImage: AssetsData.collection1,
      productName: 'Green Long sleve\nshirt',
      productPrice: '\$25.00',
    ),
    ProductItem(
      productImage: AssetsData.collection2,
      productName: 'long sleve blouse',
      productPrice: '\$25.00',
    ),
    ProductItem(
      productImage: AssetsData.collection3,
      productName: 'Green Long sleve shirt',
      productPrice: '\$25.00',
    ),
    ProductItem(
      productImage: AssetsData.collection4,
      productName: 'Green Long sleve  ',
      productPrice: '\$25.00',
    ),
    ProductItem(
      productImage: AssetsData.collection5,
      productName: 'Green Long sleve ',
      productPrice: '\$25.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Separator(),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) =>
                    products[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
