import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {

    double _screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.vertical;
    double _screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF202020),
        body: SingleChildScrollView(
          child: Column(
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
              Container(
                color: Color(0xFF202020),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height:  _screenHeight * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20.0,
                      ),
                    )
          
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.center,
                height: _screenHeight * 0.3,
                color: Color(0xFF202020),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w300
                        ),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300
                          ),
                          icon: Icon(
                            Icons.alternate_email,
                            size: 30.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.05,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w300
                        ),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300
                          ),
                          icon: Icon(
                            Icons.lock,
                            size: 30.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Container(
                height: _screenHeight * 0.2,
                color: Color(0xFF202020),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: _screenHeight * 0.07,
                            width: _screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xFF202020),
                              borderRadius: BorderRadius.circular(_screenHeight * 0.035),
                              border: Border.all(
                                color: Colors.grey
                              )
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: _screenHeight * 0.07,
                            width: _screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0xFF202020),
                              borderRadius: BorderRadius.circular(_screenHeight * 0.035),
                              border: Border.all(
                                color: Colors.grey
                              )
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: _screenHeight * 0.07,
                          width: _screenHeight * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(_screenHeight * 0.035),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
