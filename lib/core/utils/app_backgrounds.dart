import 'package:flutter/material.dart';
import 'package:zimro/core/utils/assets.dart';

abstract class AppBackgrounds {
  static final splashBackground = Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetsData.splashBackground),
        fit: BoxFit.cover,
      ),
    ),
  );

  static final authBackground = Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AssetsData.authBackground),
        fit: BoxFit.cover,
      ),
    ),
    foregroundDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Colors.black, Colors.black54, Colors.transparent],
      ),
    ),
  );
}
