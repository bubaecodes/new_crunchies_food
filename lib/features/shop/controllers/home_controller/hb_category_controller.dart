import 'package:get/get.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';

class HbCategoryController extends GetxController{
  static HbCategoryController get instance => Get.find();

  final List<Map<String, String>> categoryData = [
    {'name': 'All', 'image': MyImages.categoryImg1},
    {'name': 'Food', 'image': MyImages.categoryImg2},
    {'name': 'Protein', 'image': MyImages.categoryImg3},
    {'name': 'Pastry', 'image': MyImages.categoryImg4},
    {'name': 'Cake', 'image': MyImages.categoryImg5},
    {'name': 'Shawarma', 'image': MyImages.categoryImg6},
    {'name': 'Bread', 'image': MyImages.categoryImg7},
    {'name': 'Drinks', 'image': MyImages.categoryImg8},
    {'name': 'Ice cream', 'image': MyImages.categoryImg9},
  ];

  final RxInt selectedIndex = 0.obs;

  void updateBorderIndex (int index){
    selectedIndex.value = index;
  }
}