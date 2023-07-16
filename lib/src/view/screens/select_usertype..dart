import 'package:flutter/material.dart';
import 'package:pwanistore/src/authentication/buyer_signup.dart';
import 'package:pwanistore/src/authentication/seller_signup.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreen createState() => _UserScreen();
}

class _UserScreen extends State<UserScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _buttonOffsetAnimation;
  late Animation<Offset> _textOffsetAnimation;
  bool _isTextAnimated = false;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _buttonOffsetAnimation =
        Tween<Offset>(begin: Offset(0, 1), end: Offset.zero).animate(
            CurvedAnimation(parent: _animationController, curve: Curves.ease));

    _textOffsetAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero)
        .animate(
        CurvedAnimation(parent: _animationController, curve: Curves.ease));

    _animationController.addListener(() {
      if (_animationController.status == AnimationStatus.completed) {
        setState(() {
          _isTextAnimated = true;
        });
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    // Dispose the animation controller
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/lamuzonuser.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SlideTransition(
                position: _textOffsetAnimation,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'LamuZon Store',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'arimo',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SlideTransition(
                position: _textOffsetAnimation,
                child: Text(
                  " Select Seller if you wish to add products and select buyer if you wish to buy our unique products.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _isTextAnimated
                        ? Color.fromARGB(255, 228, 229, 231)
                        : Color.fromARGB(255, 250, 224, 207),
                    fontSize: 20,
                    fontFamily: 'arial',
                  ),
                ),
              ),
              SizedBox(height: 30),
              SlideTransition(
                position: _buttonOffsetAnimation,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SellerSignup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    textStyle: TextStyle(fontSize: 20.0),
                    minimumSize: Size(300.0, 60.0),
                  ),
                  child: Text(
                    'Seller',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        fontFamily: 'arial'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SlideTransition(
                position: _buttonOffsetAnimation,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyerSignup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side:
                      BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    textStyle: TextStyle(fontSize: 20.0),
                    minimumSize: Size(300.0, 60.0),
                  ),
                  child: Text(
                    'Buyer',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        fontFamily: 'arial'),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}