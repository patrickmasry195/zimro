import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:zimro/core/utils/app_text_styles.dart';
import 'package:zimro/core/utils/assets.dart';
import 'package:zimro/features/profile/presentation/views/widgets/custom_profile_app_bar.dart';
import 'package:zimro/features/profile/presentation/views/widgets/profile_view_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomProfileAppBar(),
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset(AssetsData.avatar),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Ashan Niroshana",
                    style: AppTextStyles.title3SemiBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(IconlyLight.ticket, color: Colors.white, size: 24),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reffer friend give coupon code",
                            style: AppTextStyles.caption2Regular.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Learn More",
                            style: AppTextStyles.caption2Medium.copyWith(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 24),
                  Text(
                    "Account Settings",
                    style: AppTextStyles.title3SemiBold.copyWith(
                      color: Colors.white,
                    ),
                  ),

                  ProfileViewItem(
                    itemName: 'Personal information',
                    icon: IconlyLight.profile,
                  ),
                  Divider(),
                  ProfileViewItem(itemName: 'Address Book', icon: Icons.book),
                  Divider(),
                  ProfileViewItem(
                    itemName: 'My payment option',
                    icon: Icons.credit_card,
                  ),
                  Divider(),
                  ProfileViewItem(
                    itemName: 'Notification',
                    icon: Icons.notifications,
                  ),
                  Divider(),
                  SizedBox(height: 24),
                  Text(
                    "My Order",
                    style: AppTextStyles.title3SemiBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  ProfileViewItem(
                    itemName: 'Wishlist',
                    icon: Icons.favorite_outline,
                  ),
                  Divider(),
                  ProfileViewItem(itemName: 'My order', icon: Icons.add_box),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
