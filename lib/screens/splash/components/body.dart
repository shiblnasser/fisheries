import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/screens/sign_in/sign_in_screen.dart';
import 'package:fisheries/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:fisheries/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentpage = 0;
  List<Map<String,String>> splashdata = [
  {
    "text":"Welcome to Fisheries",
    "image" : "assets/images/splash_1.png"
  },
  {
  "text":"Welcome to Fisheries",
  "image" : "assets/images/splash_1.png"
  },
  {
  "text":"Welcome to Fisheries",
  "image" : "assets/images/splash_1.png"
  }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex:3,
                child: PageView.builder(
                  onPageChanged: (value)
                    {
                      setState(() {
                        currentpage=value;
                      });
                    },
                  itemCount:splashdata.length,
                    itemBuilder: (context, index) => SplashContent(
                  text: splashdata[index]["text"],
                  image: splashdata[index]["image"],))),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getpropotionalscreenwidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                        List.generate(splashdata.length, (index) => buildDot(index: index),
                        )
                    ),
                    Spacer(flex: 3,),
                    DefaultButton(
                      text: 'Continue',
                      press:(){
                        Navigator.pushNamed(context, SigninScreen.routename);
                      } ,),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
                  margin: EdgeInsets.only(right: 6),
                  height: 6,
                  width: currentpage == index? 20:6,
                  decoration: BoxDecoration(
                    color:currentpage == index? kPrimarycolor:Color(0xFFD8D8D8),
                    borderRadius: BorderRadius.circular(3)
                  ),

                );
  }
}





