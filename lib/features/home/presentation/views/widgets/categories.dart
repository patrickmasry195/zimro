import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/features/home/presentation/views/widgets/custom_chip.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomChip(text: "All Collections", backgroundColor: Colors.grey[700]),
        CustomChip(text: "Trousers", backgroundColor: Color(0xff2A2A2A)),
        CustomChip(text: "Denims", backgroundColor: Color(0xff2A2A2A)),
        CustomChip(text: "Short", backgroundColor: Color(0xff2A2A2A)),
        IconButton(
          onPressed: () {},
          icon: Icon(IconlyLight.filter_2, size: 20),
        ),
      ],
    );
  }
}
