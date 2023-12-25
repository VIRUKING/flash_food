import 'package:flash_food/Core/app_colors.dart';
import 'package:flash_food/Core/assets_constantes.dart';
import 'package:flash_food/Core/response_conf.dart';
import 'package:flash_food/Core/text_styles.dart';
import 'package:flash_food/Presentation/Base/food_item.dart';
import 'package:flash_food/Presentation/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: getHeight(230),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(24),
            ).copyWith(
              top: MediaQuery.of(context).viewPadding.top,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsConstants.homeTopBackgroundImage),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: EdgeInsets.only(top: getHeight(20), bottom: getHeight(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Your Location",
                                style: TextStyles.bodyMediumRegular
                                    .copyWith(color: Colors.white),
                              ),
                              const Gap(8),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 16,
                              )
                            ],
                          ),
                          const Gap(8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: getSize(24),
                              ),
                              const Gap(8),
                              Text(
                                "New York City",
                                style: TextStyles.bodyMediumSemiBold
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: getSize(40),
                            width: getSize(40),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: getSize(24),
                            ),
                          ),
                          const Gap(16),
                          Container(
                            height: getSize(40),
                            width: getSize(40),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.white,
                              size: getSize(24),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Gap(26),
                  Text(
                    "Provide the best \nfood for you",
                    style: TextStyles.headingH4SemiBold
                        .copyWith(color: Pallete.neutral10),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Column(
              children: [
                const Gap(26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Find by Category",
                      style: TextStyles.bodyLargeSemiBold
                          .copyWith(color: Pallete.neutral100),
                    ),
                    Text(
                      "See All",
                      style: TextStyles.bodyMediumMedium
                          .copyWith(color: Pallete.orangePrimary),
                    )
                  ],
                ),
                const Gap(18),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: categories
                        .map((category) => Container(
                              width: getSize(65),
                              height: getSize(65),
                              padding: const EdgeInsets.all(8),
                              decoration: ShapeDecoration(
                                color: Pallete.orangePrimary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(category.link),
                                  const Gap(4),
                                  Text(
                                    category.designation.toString(),
                                    style: TextStyles.bodyMediumMedium
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ))
                        .toList()),
                const Gap(24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodItem(),
                    FoodItem(),
                  ],
                ),
                const Gap(16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodItem(),
                    FoodItem(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}