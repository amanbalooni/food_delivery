import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/theme/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';

import '../../theme/colors.dart';
import '../../theme/primary_text.dart';
import '../../theme/secondary_text.dart';
import '../../widgets/app_food_column.dart';
import '../../widgets/icon_and_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    print("current height is ${MediaQuery.of(context).size.height}");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/pasta.jpg"))),
              )),
          const Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcons(icon: Icons.arrow_back_ios),
                  AppIcons(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppFoodColumn(
                        text: 'Chinese Side',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PrimaryText(text: "Introduce"),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: SingleChildScrollView(child: SecondaryText(text: "Biryani is derived from the Persian word Birian, which means 'fried before cooking' and Birinj, the Persian word for rice. While there are multiple theories about how biryani made its way to India, it is generally accepted that it originated in West Asia.",
                            color: AppColors.paraColor,
                            size: 14,
                            height: 1.8,),
                          )
                      ),

                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
        decoration: const BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10 * 2),
              topRight: Radius.circular(10 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: 5,),
                  PrimaryText(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor,
              ),
              child: PrimaryText(text: "\$10 | Add to cart", color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
