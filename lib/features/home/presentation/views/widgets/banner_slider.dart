import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/home/presentation/views/widgets/banner_item.dart';

class BannerSlider extends StatelessWidget {
  BannerSlider({super.key});

  final List<BannerItem> items = [
    BannerItem(
      upperText: "Save up to 40% ",
      lowerText: "Summer collection",
      buttonText: "Shop Now",
      backgroundImage: AssetsData.banner3,
    ),
    BannerItem(
      upperText: "Men’s Fashion",
      lowerText: "50% OFF",
      buttonText: "Shop Now",
      backgroundImage: AssetsData.banner1,
    ),
    BannerItem(
      upperText: "Get up to 30% Off",
      lowerText: "New Arrivals",
      buttonText: "Explore",
      backgroundImage: AssetsData.banner2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: CarouselSlider(
        items: items,
        options: CarouselOptions(
          autoPlay: true,
          height: 300,
          initialPage: 3,
          enableInfiniteScroll: false,
          viewportFraction: 0.9,
          disableCenter: false,
          reverse: true,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,
          enlargeFactor: 0.9,
        ),
      ),
    );
  }
}
