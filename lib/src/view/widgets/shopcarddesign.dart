import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopCarddesign extends StatelessWidget {
  const ShopCarddesign(
      {super.key,
        required this.onClick,
        required this.img,
        required this.title,
        required this.subtitle,
        required this.price});

  final VoidCallback onClick;
  final String img;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: Get.width * .45,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(249, 246, 237, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            //heart icon
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 18,
                    color: Color.fromRGBO(49, 48, 62, 1),
                  ),
                ),
              ],
            ),

            //image
            Container(
              width: Get.width * .33,
              height: Get.height * .2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //space
            SizedBox(
              height: 5,
            ),
            //title text
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //space
            SizedBox(
              height: 3,
            ),
            //title text
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            //space
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(49, 48, 62, 1),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}