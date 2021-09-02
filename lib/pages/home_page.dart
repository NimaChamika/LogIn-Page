import 'package:flutter/material.dart';
import 'package:fw1_login/pages/signin_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    double _screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.vertical;
    double _screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: _screenHeight * 0.7,
                decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bg.jpeg'),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: _screenHeight * 0.3,
              color: Color(0xFF202020),
              child: Column(
                children: [
                  Text(
                    'BAKING LESSONS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'MASTER THE ART OF BAKING',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: _screenHeight * 0.1,
                  ),
                  GestureDetector(
                    onTap: ()=>
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_)=> SignInPage(),
                        ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: _screenHeight * 0.07,
                      width: _screenWidth * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.yellow
                      ),
                      child: Text(
                        'START LEARNING',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400
                        ),    
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
