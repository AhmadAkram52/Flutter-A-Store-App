import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';

class ProductsDataModel {
  final String image, title, brandName;
  final double off;
  final double price;

  ProductsDataModel(
      {required this.off,
      required this.price,
      required this.image,
      required this.title,
      required this.brandName});
}

List<ProductsDataModel> productsList = [
  ProductsDataModel(
      off: 35.5,
      price: 455,
      image: AImages.productImage1,
      title: ATexts.productTitle1,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage2,
      title: ATexts.productTitle2,
      brandName: ATexts.puma),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage3,
      title: ATexts.productTitle3,
      brandName: ATexts.ikea),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage4,
      title: ATexts.productTitle4,
      brandName: ATexts.jordan),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage5,
      title: ATexts.productTitle5,
      brandName: ATexts.hermanMiller),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage6,
      title: ATexts.productTitle6,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage7,
      title: ATexts.productTitle7,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage8,
      title: ATexts.productTitle8,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage9,
      title: ATexts.productTitle9,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage10,
      title: ATexts.productTitle10,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage11,
      title: ATexts.productTitle11,
      brandName: ATexts.samsung),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage12,
      title: ATexts.productTitle12,
      brandName: ATexts.samsung),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage13,
      title: ATexts.productTitle13,
      brandName: ATexts.samsung),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage14,
      title: ATexts.productTitle14,
      brandName: ATexts.apple),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage15,
      title: ATexts.productTitle15,
      brandName: ATexts.apple),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage16,
      title: ATexts.productTitle16,
      brandName: ATexts.apple),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage17,
      title: ATexts.productTitle17,
      brandName: ATexts.apple),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage18,
      title: ATexts.productTitle18,
      brandName: ATexts.animal),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage19,
      title: ATexts.productTitle19,
      brandName: ATexts.nike),
  ProductsDataModel(
      off: 35.5,
      price: 345,
      image: AImages.productImage20,
      title: ATexts.productTitle20,
      brandName: ATexts.nike),
];
