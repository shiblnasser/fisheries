import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/components/social_card.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/screens/sign_up/components/sign_up_form.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/material.dart';

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

              Text(
                'Register Account',
                style: headingStyle
              ),
              Text(
                'Complete your details or continue\nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Sizeconfig.screenheight * 0.07,),
              SignUpForm(),
              SizedBox(height: Sizeconfig.screenheight * 0.07,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: (){},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: (){},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: (){},
                  ),
                ],
              ),
              SizedBox(height:getpropotionalscreenheight(20),),
              Text(
                'By continuing you confirm that you agree\nour Terms and Conditions ',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
