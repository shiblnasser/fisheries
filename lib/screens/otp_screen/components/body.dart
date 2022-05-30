import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getpropotionalscreenwidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: Sizeconfig.screenheight*0.05,),
              Text(
                'OTP Verification',
                style:headingStyle,
                ),
              Text('We sent your code to +****', textAlign: TextAlign.center,),
              buildTimer(),
              SizedBox(height: Sizeconfig.screenheight*0.15,),
              OTPBox(),
              SizedBox(height: Sizeconfig.screenheight*0.1,),
              GestureDetector(
                onTap: (){
                  
                },
                child: Text(
                    'Resent OTP Code',
                    style: TextStyle(decoration: TextDecoration.underline)
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('This code will expired in '),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: Duration(seconds: 30),
                  builder:(context, value, child) =>Text("${value.toInt()}", style: TextStyle(color: kPrimarycolor),),
                  onEnd: (){},
                )
              ],
            );
  }
}

