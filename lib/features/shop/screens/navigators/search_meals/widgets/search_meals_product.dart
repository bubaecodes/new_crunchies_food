// import 'package:flutter/material.dart';
// import 'package:new_crunchies_food/common/widgets/mytext.dart';
// import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
// import 'package:new_crunchies_food/utils/constants/colors.dart';
// import 'package:new_crunchies_food/utils/constants/image_strings.dart';
// import 'package:new_crunchies_food/utils/constants/sizes.dart';
// import 'package:get/get.dart';
// import 'package:new_crunchies_food/utils/dummy_data/dummy_data.dart';
//
// class SearchMealsProduct extends StatelessWidget {
//   const SearchMealsProduct({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final meals = MyDummyData.products;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return MediaQuery.removePadding(
//       context: context,
//       removeTop: true,
//       child: ListView.builder(
//         itemCount: meals.length,
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         physics: const NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           final meal = meals[index];
//           return GestureDetector(
//             onTap: () => Get.to(SelectedMealScreen(meal: meal)),
//             child: Padding(
//               padding: EdgeInsetsGeometry.symmetric(vertical: MySizes.sm - 3),
//               child: Container(
//                 width: screenWidth,
//                 height: MySizes.xl * 2.5,
//                 decoration: BoxDecoration(
//                     border: BoxBorder.fromBorderSide(BorderSide(color: MyColors.darkGrey, width: 1.5)),
//                     borderRadius: BorderRadius.all(Radius.circular(16)),
//                     color: Colors.white
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: MySizes.xl * 3.9,
//                       height: MySizes.xl * 2.5,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(13),
//                             bottomLeft: Radius.circular(13),
//                           ),
//                           image: DecorationImage(image: AssetImage(MyImages.productImage19), fit: BoxFit.cover)
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: MySizes.sm - 2, horizontal: MySizes.sm - 2),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MyText(
//                             title: 'Donut',
//                             fontVariation: FontVariation.weight(700),
//                             fontSize: 15.3,
//                             color: MyColors.darkerGrey,
//                           ),
//                           MyText(
//                             title: '#1,000',
//                             fontVariation: FontVariation.weight(800),
//                             fontSize: 16.5,
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
//       ),
//     );
//   }
// }

/// second option; worked but didnt show random images
library;



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/search_meal_controllers/search_meal_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/clear_search.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/popular_searched_meals.dart';

class SearchMealsProduct extends StatelessWidget {
  const SearchMealsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchMealController>();
    final screenWidth = MediaQuery.of(context).size.width;

    // return Obx(() {
    //   final meals = controller.searchResults;
    //
    //   if (meals.isEmpty) {
    //     return Center(
    //       child: Padding(
    //         padding: const EdgeInsets.all(40.0),
    //         child: MyText(
    //           title: 'No meals found',
    //           fontVariation: const FontVariation.weight(600),
    //           fontSize: 16,
    //           color: Colors.grey[700],
    //         ),
    //       ),
    //     );
    //   }
    //
    //   return MediaQuery.removePadding(
    //     context: context,
    //     removeTop: true,
    //     child:
    //     PopularSearchedMeals(),
    //     // child: ListView.builder(
    //     //   itemCount: meals.length,
    //     //   shrinkWrap: true,
    //     //   physics: const NeverScrollableScrollPhysics(),
    //     //   itemBuilder: (context, index) {
    //     //     final meal = meals[index];
    //     //     return GestureDetector(
    //     //       onTap: () => Get.to(SelectedMealScreen(meal: meal)),
    //     //       child: Padding(
    //     //         padding: EdgeInsets.symmetric(vertical: MySizes.sm - 3),
    //     //         child: Container(
    //     //           width: screenWidth,
    //     //           height: MySizes.xl * 2.5,
    //     //           decoration: BoxDecoration(
    //     //             border: Border.all(color: MyColors.darkGrey, width: 1.5),
    //     //             borderRadius: BorderRadius.circular(16),
    //     //             color: Colors.white,
    //     //           ),
    //     //           child: Row(
    //     //             children: [
    //     //               /// --- Image
    //     //               Container(
    //     //                 width: MySizes.xl * 3.9,
    //     //                 height: MySizes.xl * 2.5,
    //     //                 decoration: BoxDecoration(
    //     //                   borderRadius: const BorderRadius.only(
    //     //                     topLeft: Radius.circular(13),
    //     //                     bottomLeft: Radius.circular(13),
    //     //                   ),
    //     //                   image: DecorationImage(
    //     //                     image: NetworkImage(meal.thumbnail),
    //     //                     fit: BoxFit.cover,
    //     //                   ),
    //     //                 ),
    //     //               ),
    //     //
    //     //               /// --- Text Details
    //     //               Padding(
    //     //                 padding: const EdgeInsets.symmetric(
    //     //                   vertical: MySizes.sm - 2,
    //     //                   horizontal: MySizes.sm - 2,
    //     //                 ),
    //     //                 child: Column(
    //     //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     //                   crossAxisAlignment: CrossAxisAlignment.start,
    //     //                   children: [
    //     //                     MyText(
    //     //                       title: meal.title,
    //     //                       fontVariation: const FontVariation.weight(700),
    //     //                       fontSize: 15.3,
    //     //                       color: MyColors.darkerGrey,
    //     //                     ),
    //     //                     MyText(
    //     //                       title: '#${meal.price.toStringAsFixed(0)}',
    //     //                       fontVariation: const FontVariation.weight(800),
    //     //                       fontSize: 16.5,
    //     //                     ),
    //     //                   ],
    //     //                 ),
    //     //               ),
    //     //             ],
    //     //           ),
    //     //         ),
    //     //       ),
    //     //     );
    //     //   },
    //     // ),
    //   );
    // });
    return Obx(() {
      final hasSearched = controller.hasSearched.value;
      final results = controller.searchResults;
      final recentSearches = controller.recentSearches;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// --- Recent searches OR search results
          if (!hasSearched || results.isEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  title: "Recent Searches",
                  fontVariation: FontVariation.weight(700),
                  fontSize: 16,
                ),
                const SizedBox(height: 8),
                if (recentSearches.isEmpty)
                  const ClearSearch() // default message if no recent searches
                else
                  Wrap(
                    spacing: 8,
                    children: recentSearches.map((search) {
                      return ActionChip(
                        label: Text(search),
                        onPressed: () {
                          controller.onSearch(search); // re-run search
                        },
                      );
                    }).toList(),
                  ),
              ],
            )
          else
            SearchMealsProduct(), // show search results

          const SizedBox(height: 20),

          /// --- Random meals always visible
          const PopularSearchedMeals(),
        ],
      );
    });
  }
}

///3rd

