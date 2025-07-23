import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class ProfileViewItem extends StatelessWidget {
  const ProfileViewItem({super.key, this.icon, required this.itemName});
  final IconData? icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              itemName,
              style: AppTextStyles.subheadlineMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.white, size: 24),
        ],
      ),
    );
  }
}
