import 'package:flutter/material.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/add_to_cart.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/color_selector.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_description.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_details_separator.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_name.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/size_selector.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 352,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 22, 16, 0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductName(),
                    SizedBox(height: 12),
                    ProductDescription(),
                    SizedBox(height: 12),
                    ProductDetailSeparator(separatorName: 'Color'),
                    SizedBox(height: 12),
                    ColorSelector(),
                    SizedBox(height: 16),
                    ProductDetailSeparator(separatorName: 'Size'),
                    SizedBox(height: 9),
                    SizeSelector(),
                    AddToCart(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
