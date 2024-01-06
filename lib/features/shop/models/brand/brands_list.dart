import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';

class ABrandList {
  final String title, image;

  ABrandList({required this.title, required this.image});
}

List<ABrandList> brandsList = [
  ABrandList(title: ATexts.nike, image: AImages.nikeLogo),
  ABrandList(title: ATexts.apple, image: AImages.appleLogo),
  ABrandList(title: ATexts.adidas, image: AImages.adidasLogo),
  ABrandList(title: ATexts.puma, image: AImages.pumaLogo),
  ABrandList(title: ATexts.acer, image: AImages.acerLogo),
  ABrandList(title: ATexts.hermanMiller, image: AImages.hermanMillerLogo),
  ABrandList(title: ATexts.ikea, image: AImages.ikeaLogo),
  ABrandList(title: ATexts.jordan, image: AImages.jordanLogo),
  ABrandList(title: ATexts.kenwood, image: AImages.kenwoodLogo),
  ABrandList(title: ATexts.samsung, image: AImages.samsungLogo),
  ABrandList(title: ATexts.zara, image: AImages.zaraLogo),
];
