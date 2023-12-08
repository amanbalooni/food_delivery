import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/theme/colors.dart';
import 'package:food_delivery/theme/primary_text.dart';
import 'package:food_delivery/theme/secondary_text.dart';
import 'package:food_delivery/widgets/app_icon.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(toolbarHeight: 80,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.clear),
                AppIcons(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Center(
                child: PrimaryText(text: "Chinese Side",),
              ),
            ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/pasta.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: SecondaryText(text: "Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.",
                  size: 14,
                  color: AppColors.paraColor,
                  height: 1.8,),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
