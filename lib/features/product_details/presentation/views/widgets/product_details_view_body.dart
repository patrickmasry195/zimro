import 'package:flutter/material.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_details_appbar.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_details_card.dart';
import 'package:zimro/features/product_details/presentation/views/widgets/product_details_photo.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ProductDetailsPhoto(),
          ProductDetailsAppBar(),
          ProductDetailsCard(),
        ],
      ),
    );
  }
}
