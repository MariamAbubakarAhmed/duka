import 'package:pwanistore/src/model/bottom_navy_bar_item.dart';
import 'package:pwanistore/src/model/recommended_product.dart';
import 'package:pwanistore/src/model/product_size_type.dart';
import 'package:pwanistore/src/model/product_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pwanistore/src/model/categorical.dart';
import 'package:pwanistore/src/model/numerical.dart';
import 'package:pwanistore/src/model/product.dart';
import 'package:flutter/material.dart';

class AppData {
  const AppData._();

  static String dummyText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting'
      ' industry. Lorem Ipsum has been the industry\'s standard dummy text'
      ' ever since the 1500s, when an unknown printer took a galley of type'
      ' and scrambled it to make a type specimen book.';

  static List<Product> products = [
    Product(
      name: 'Furniture',
      price: 460,
      about: dummyText,
      isAvailable: true,
      off: 300,
      quantity: 0,
      images: [
        'assets/images/antique-furniture.png',
        'assets/images/antique-furniture.png',
            'assets/images/antique-furniture.png',
            'assets/images/antique-furniture.png'
      ],
      isFavorite: true,
      rating: 1,
      type: ProductType.Furniture,
    ),
    Product(
      name: 'Clothes',
      price: 380,
      about: dummyText,
      isAvailable: false,
      off: 220,
      quantity: 0,
      images: [
        'assets/images/miyaa hat.jpg',
        'assets/images/miyaa hat.jpg',
        'assets/images/miyaa hat.jpg',
            'assets/images/miyaa hat.jpg'
      ],
      isFavorite: false,
      rating: 4,
      type: ProductType.Clothes,
    ),
    Product(
      name: 'Jewellery',
      price: 650,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/ring.jpg',
        'assets/images/ring.jpg',
        'assets/images/ring.jpg',
      ],
      isFavorite: false,
      rating: 3,
      type: ProductType.Jewellery,
    ),
    Product(
      name: 'Gifts',
      price: 229,
      about: dummyText,
      isAvailable: true,
      off: 200,
      quantity: 0,
      images: [
        'assets/images/gift.jpg',
        'assets/images/gift.jpg',
        'assets/images/gift.jpg',
      ],
      isFavorite: false,
      rating: 5,
      sizes: ProductSizeType(
        categorical: [
          Categorical(CategoricalType.small, true),
          Categorical(CategoricalType.medium, false),
          Categorical(CategoricalType.large, false),
        ],
      ),
      type: ProductType.Gifts,
    ),
    Product(
      name: 'Food',
      price: 330,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/lobster.jpg',
        'assets/images/lobster.jpg',
        'assets/images/lobster.jpg',
      ],
      isFavorite: false,
      rating: 4,
      sizes: ProductSizeType(
        numerical: [Numerical('41', true), Numerical('45', false)],
      ),
      type: ProductType.Food,
    ),

  ];

  static List<ProductCategory> categories = [
    ProductCategory(
      ProductType.all,
      true,
      Icons.all_inclusive,
    ),
    ProductCategory(
      ProductType.Furniture,
      false,
      FontAwesomeIcons.table,
    ),
    ProductCategory(ProductType.Jewellery, false, Icons.grade),
    ProductCategory(
      ProductType.Jewellery,
      false,
      FontAwesomeIcons.table,
    ),
    ProductCategory(
      ProductType.Clothes,
      false,
      Icons.account_box,
    ),
    ProductCategory(
      ProductType.Gifts,
      false,
      Icons.card_giftcard,
    ),
  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
      "Home",
      const Icon(Icons.home),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Favorite",
      const Icon(Icons.favorite),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Cart",
      const Icon(Icons.shopping_cart),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Shops",
      const Icon(Icons.shop_2),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Profile",
      const Icon(Icons.person),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
  ];

  static List<RecommendedProduct> recommendedProducts = [
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFFEC6813),
    ),
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFF3081E1),
      buttonBackgroundColor: const Color(0xFF9C46FF),
      buttonTextColor: Colors.white,
    ),
  ];
}