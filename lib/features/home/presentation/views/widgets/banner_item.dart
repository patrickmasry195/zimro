import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({
    super.key,
    required this.upperText,
    required this.lowerText,
    required this.buttonText,
    required this.backgroundImage,
  });

  final String upperText;
  final String lowerText;
  final String buttonText;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 343,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(21, 33, 120, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(upperText, style: AppTextStyles.title3SemiBold),
                Text(lowerText, style: AppTextStyles.title3SemiBold),
                SizedBox(height: 12),
                SizedBox(
                  height: 28,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff979423),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: AppTextStyles.caption1SemiBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
