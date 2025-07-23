import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/home/presentation/views/widgets/product_item.dart';

class AllCollectionListview extends StatelessWidget {
  AllCollectionListview({super.key});

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
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: products[index],
        ),
      ),
    );
  }
}
