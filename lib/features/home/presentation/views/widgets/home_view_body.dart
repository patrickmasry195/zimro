import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/home/presentation/views/widgets/all_collection_listview.dart';
import 'package:zimro/features/home/presentation/views/widgets/banner_slider.dart';
import 'package:zimro/features/home/presentation/views/widgets/categories.dart';
import 'package:zimro/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:zimro/features/home/presentation/views/widgets/new_arrivals_craousel.dart';
import 'package:zimro/features/home/presentation/views/widgets/product_item.dart';
import 'package:zimro/features/home/presentation/views/widgets/separator.dart';
import 'package:zimro/features/home/presentation/views/widgets/user_greeting.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final List<Map<String, String>> items = [
    {
      'productImage': AssetsData.product1,
      'productName': 'Women Bottoms',
      'productPrice': '\$28.00',
    },
    {
      'productImage': AssetsData.product2,
      'productName': 'party Frock #12',
      'productPrice': '\$22.00',
    },
    {
      'productImage': AssetsData.product3,
      'productName': 'Women’s long sleve jacket',
      'productPrice': '\$21.00',
    },
    {
      'productImage': AssetsData.product4,
      'productName': 'Men’s long sleve jacket',
      'productPrice': '\$16.00',
    },
    {
      'productImage': AssetsData.product5,
      'productName': 'Green Long sleve shirt',
      'productPrice': '\$46.00',
    },
    {
      'productImage': AssetsData.product6,
      'productName': 'Asos Women Trousers',
      'productPrice': '\$34.00',
    },
  ];

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
                  AllCollectionListview(),
                  SizedBox(height: 24),
                  Separator(preTextName: 'New arrivals'),
                  NewArrivalsCraousel(),
                  Separator(preTextName: 'All Product'),
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ProductItem(
                  productImage: item['productImage'] ?? '',
                  productName: item['productName'] ?? '',
                  productPrice: item['productPrice'] ?? '',
                  imageHeight: 250,
                ),
              );
            }, childCount: items.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 3.2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}
