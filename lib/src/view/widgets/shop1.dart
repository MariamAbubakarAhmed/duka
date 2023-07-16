import 'package:flutter/material.dart';
class Shop1 extends StatelessWidget {
  const Shop1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text("Adventure"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      //MAIN CONTENT
      body: Container(
        child: ListView(
          children: [
            //IMAGE
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/shop 1.webp"),
                      fit: BoxFit.cover)),
            ),
            //SPACE
            SizedBox(
              height: 20,
            ),
            //TITLE, SUBTITLE SECTION
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Forest Trail",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Shanzu, Mombasa",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18,
                  ),
                  Text("41"),
                ],
              ),
            ),
            //SPACE
            SizedBox(
              height: 30,
            ),
            //ACTION SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FIRST CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //SECOND CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //THIRD CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //SPACE
            SizedBox(
              height: 20,
            ),
            //PARAGRAPH SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "Bamburi Forest Trails is located along Mombasa-Malindi Highway opposite Bamburi Beach Hotel. Open daily from 8:00 am to 4:30 pm. Visitors are required to leave the park by 6:00 pm. For further information and booking, call: 07 21 381 949 or visit www.lafargeecosystems.co.ke."),
            ),
          ],
        ),
      ),
      //FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}