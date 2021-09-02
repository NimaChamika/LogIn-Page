import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {

    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          Container(
            height: _screenHeight * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 15.0,
                  ),
                )

              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: _screenHeight * 0.4,
            color: Color(0xFF202020),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        size: 30.0,
                      ),
                      Flexible(
                        child: TextField(

                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        size: 30.0,
                      ),
                      Flexible(
                        child: TextField(),

                      )
                    ],
                  )

                ],
              ),
            )
          ),
          Flexible(
            child: Container(
              height: _screenHeight * 0.3,
              color: Color(0xFF202020),
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.face,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.shop_two,
                          size: 30.0,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.forward,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
