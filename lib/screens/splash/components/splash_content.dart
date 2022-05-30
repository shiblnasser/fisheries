import 'package:fisheries/constants.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key, this.text, this.image,
  }) : super(key: key);

  final String text,image;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          'FISHERIES',
          style: TextStyle(fontSize: getpropotionalscreenwidth(36),
              color: kPrimarycolor,
              fontWeight:FontWeight.bold
          ),
        ),
        Text(
            text,
            textAlign:TextAlign.center
        ),
        Spacer(flex: 2,),
        Image.asset(image,
          height: getpropotionalscreenheight(265),
          width: getpropotionalscreenwidth(235),)
      ],
    );
  }
}