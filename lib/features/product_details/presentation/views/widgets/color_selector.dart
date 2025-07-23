import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) {
          final colors = [
            Color(0xFFF6F5D7),
            Color(0xFFC6E6D7),
            Color(0xFFB7D8F6),
            Color(0xFFF6C7C7),
            Color(0xFFA9A23A),
          ];
          final selectedIndex = 4;
          return GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: colors[index],
                    shape: BoxShape.circle,
                  ),
                ),
                if (index == selectedIndex)
                  Positioned(
                    top: 1,
                    right: 1,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
