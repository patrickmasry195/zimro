import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final sizes = ['S', 'M', 'L'];
    final selectedIndex = 0;

    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(sizes.length, (index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? Colors.black : const Color(0xFFF6F6F2),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                sizes[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: isSelected ? Color(0xFFF6F6F2) : Colors.black,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
