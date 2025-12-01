import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/shop/controllers/home_controller/home_dummy/category_dummy_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeBodyCategory extends StatelessWidget {
  const HomeBodyCategory({super.key});


  @override
  Widget build(BuildContext context) {
    //final categoryController = Get.put(HbCategoryController());
    final categoryDummyController = Get.put(CategoryDummyController());
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryDummyController.categoryData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => categoryDummyController.updateBorderIndex(index),
            child: Obx(
              () {
                final isSelected = index == categoryDummyController.selectedIndex.value;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: MySizes.sm),
                  child: Container(
                    width: 84,
                    height: 84,
                    decoration: BoxDecoration(
                      //color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: isSelected ? Colors.pinkAccent : MyColors.darkGrey, width: 3),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: MySizes.sm + 4),
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: Image.asset(categoryDummyController.categoryData[index]['image']!)
                          ),
                        ),
                        SizedBox(height: MySizes.xs + 4),
                        ClipOval(
                          child: Container(
                            width: 62,
                            height: 41,
                            color: MyColors.pinkBg,
                            child: Center(
                              child: Text(
                                categoryDummyController.categoryData[index]['name']!,
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 10.7,
                                  color: Colors.black,
                                  fontVariations: [FontVariation.weight(700)]
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            ),
          );
        },
      ),
    );
  }
}