import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/home/presentation/views/widgets/new_arrivals_item.dart';

class NewArrivalsCraousel extends StatelessWidget {
  NewArrivalsCraousel({super.key});

  final List<Map<String, String>> items = [
    {
      'image': AssetsData.newArrivals1,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Women’s wear',
      'price': '\$26.00',
    },
    {
      'image': AssetsData.newArrivals2,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Women’s wear',
      'price': '\$26.00',
    },
    {
      'image': AssetsData.newArrivals3,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Men’s wear',
      'price': '\$26.00',
    },
    {
      'image': AssetsData.newArrivals4,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Men’s wear',
      'price': '\$26.00',
    },
    {
      'image': AssetsData.newArrivals5,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Women’s wear',
      'price': '\$26.00',
    },
    {
      'image': AssetsData.newArrivals6,
      'name': 'Cotton long sleeve jacket',
      'gender': 'Women’s wear',
      'price': '\$26.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: PageView.builder(
        itemCount: (items.length / 2).ceil(),
        controller: PageController(viewportFraction: 0.95),
        itemBuilder: (context, pageIndex) {
          final firstIndex = pageIndex * 2;
          final secondIndex = firstIndex + 1;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (firstIndex < items.length)
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: NewArrivalsItem(
                    productImage: items[firstIndex]['image']!,
                    productName: items[firstIndex]['name']!,
                    productGender: items[firstIndex]['gender']!,
                    productPrice: items[firstIndex]['price']!,
                  ),
                ),
              if (secondIndex < items.length)
                NewArrivalsItem(
                  productImage: items[secondIndex]['image']!,
                  productName: items[secondIndex]['name']!,
                  productGender: items[secondIndex]['gender']!,
                  productPrice: items[secondIndex]['price']!,
                ),
            ],
          );
        },
      ),
    );
  }
}
