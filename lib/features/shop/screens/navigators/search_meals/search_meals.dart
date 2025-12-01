// import 'package:flutter/material.dart';
// import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
// import 'package:new_crunchies_food/common/widgets/mytext.dart';
// import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/clear_search.dart';
// import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_header.dart';
// import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_product.dart';
// import 'package:new_crunchies_food/utils/constants/sizes.dart';
// import 'package:new_crunchies_food/utils/constants/text_strings.dart';
//
// class SearchMeals extends StatelessWidget {
//   const SearchMeals({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: MyHomePadding(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SearchMealsHeader(),
//               SizedBox(height: MySizes.sm - 2),
//               ClearSearch(),
//               MyText(
//                 title: MyTexts.searchMealsOptionHeader,
//                 fontVariation: FontVariation.weight(700),
//                 fontSize: 16,
//               ),
//               SizedBox(height: MySizes.md - 5),
//               SearchMealsProduct()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/search_meal_controllers/search_meal_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/clear_search.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/popular_searched_meals.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_header.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_product.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SearchMeals extends StatelessWidget {
  const SearchMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchMealController());
    //final controller = SearchMealController.instance;

    return Scaffold(
      backgroundColor: Colors.white,
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchMealsHeader(),
              SizedBox(height: MySizes.sm - 2),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    title: MyTexts.searchMealsRecentSearch,
                    fontVariation: const FontVariation.weight(700),
                    fontSize: 15.1,
                  ),
                  TextButton(
                    onPressed: controller.clearSearch,
                    child: MyText(
                      title: MyTexts.searchMealsClearSearch,
                      fontVariation: const FontVariation.weight(700),
                      fontSize: 15.1,
                      textDecoration: TextDecoration.underline,
                      color: MyColors.primary,
                    ),
                  ),
                ],
              ),

              /// --- Switchable Section
              // Obx(() {
              //   final hasSearched = controller.hasSearched.value;
              //   final results = controller.searchResults;
              //
              //   if (!hasSearched || results.isEmpty) {
              //     return const ClearSearch();
              //   } else {
              //     return const SearchMealsProduct();
              //   }
              // }),


              ///2
              // Obx(() {
              //   final hasSearched = controller.hasSearched.value;
              //   final results = controller.searchResults;
              //
              //   return Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       if (!hasSearched || results.isEmpty)
              //         const ClearSearch(),          // 👈 show only when no search
              //
              //       if (hasSearched && results.isNotEmpty)
              //         const SearchMealsProduct(),   // 👈 show only when searching
              //
              //       const SizedBox(height: 20),
              //
              //       const PopularSearchedMeals(),  // 👈 ALWAYS show random meals
              //     ],
              //   );
              // })

              Obx(() {
                final hasSearched = controller.hasSearched.value;
                final results = controller.searchResults;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// --- Switchable section
                    if (!hasSearched || results.isEmpty)
                      const ClearSearch()  // show default message
                    else
                      SearchMealsProduct(), // show search results inside same container

                    const SizedBox(height: 20),

                    /// --- Random meals always visible
                    const PopularSearchedMeals(),
                  ],
                );
              })


            ],
          ),
        ),
      ),
    );
  }
}


