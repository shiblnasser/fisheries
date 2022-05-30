import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/screens/homepage/homepage.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: Sizeconfig.screenheight*0.04,),
          Image.asset(
            'assets/images/success.png',
            height: Sizeconfig.screenheight*0.4,

          ),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getpropotionalscreenwidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,

            ),
          ),
          Spacer(),
          SizedBox(
            width: Sizeconfig.screenwidth*0.6,
            child: DefaultButton(
              text: "Back to home",
              press: (){
                Navigator.pushNamed(context, HomePage.routename);
              },
              
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
