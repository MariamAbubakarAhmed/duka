import 'package:flutter/material.dart';
import 'package:pwanistore/src/view/widgets/shop1.dart';
import 'package:pwanistore/src/view/widgets/intro_card.dart';
import 'package:pwanistore/src/view/screens/product_list_screen.dart';
class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    padding: EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: SingleChildScrollView(
    child: Column(
    children: [
    //FIRST CONTAINER
    IntroCard(
    onClick: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Shop1()));
    },
        img:
          'assets/images/shop1.jpg',
    cardTitle: "Shop 1"),
    SizedBox(
    height: 25,
    ),
    //SECOND CONTAINER
    IntroCard(
    onClick: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Shop1()));
    },
    img: 'assets/images/shop2.jpg',
    cardTitle: "Shop 2"),
      SizedBox(
        height: 25,
      ),
      //THIRD CONTAINER
      IntroCard(
          onClick: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Shop1()));
          },
          img: 'assets/images/shop3.jpg',
          cardTitle: "Shop 3"),
      SizedBox(
        height: 25,
      ),

      //FORTH CONTAINER
      IntroCard(
          onClick: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Shop1()));
          },
          img: 'assets/images/shop4.jpg',
          cardTitle: "Shop 4"),
      SizedBox(
        height: 25,
      ),
    ],
    ),
    ),
    ),
    );
    }
    }

