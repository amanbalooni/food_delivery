import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/theme/dimensions.dart';

import '../theme/colors.dart';
import '../theme/primary_text.dart';
import '../theme/secondary_text.dart';
import 'icon_and_text.dart';

class AppFoodColumn extends StatelessWidget {
  final String text;
  const AppFoodColumn({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(text: text, size: Dimensions.fontSize26,),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => const Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            SecondaryText(text: "4.5"),
            const SizedBox(
              width: 10,
            ),
            SecondaryText(text: "1287 Comments")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
