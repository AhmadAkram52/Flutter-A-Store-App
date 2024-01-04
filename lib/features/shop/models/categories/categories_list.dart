import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';

class AHomeCategoriesList {
  final String title, image;

  AHomeCategoriesList({required this.title, required this.image});
}

List<AHomeCategoriesList> categoriesList = [
  AHomeCategoriesList(title: ATexts.shoes, image: AImages.shoeIcon),
  AHomeCategoriesList(title: ATexts.sport, image: AImages.sportIcon),
  AHomeCategoriesList(title: ATexts.cloth, image: AImages.clothIcon),
  AHomeCategoriesList(title: ATexts.cosmetics, image: AImages.cosmeticsIcon),
  AHomeCategoriesList(
      title: ATexts.electronics, image: AImages.electronicsIcon),
  AHomeCategoriesList(title: ATexts.animal, image: AImages.animalIcon),
  AHomeCategoriesList(title: ATexts.furniture, image: AImages.furnitureIcon),
  AHomeCategoriesList(title: ATexts.jewelery, image: AImages.jeweleryIcon),
];
