import 'package:e_commerce_flutter_ui/src/Screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_flutter_ui/src/componants/default_button.dart';
import 'package:e_commerce_flutter_ui/src/constants.dart';
import 'package:flutter/material.dart';

import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> { 

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Myshopu, Let's shop!",
      "image": "assets/images/welcome_1.png"
    },

    {
      "text": "We help people conect with store \naround United State of America",
      "image": "assets/images/welcome_2.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value){
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                )
              ),
            ),
            Expanded(
              // flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      )
                    ),
                    Spacer(flex: 2,),
                    DefaultButton(
                      text: "Continue",
                      press: (){
                        Navigator.pushNamed(context, SignInScreen.routeName);                        
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right:5),
      height: 6,
      width: currentPage == index ? 28:6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}



