import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/components/no_account_text.dart';
import 'package:fisheries/components/social_card.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/screens/forget_password/foget_password_screen.dart';
import 'package:fisheries/screens/sign_in/components/sign_form.dart';

import 'package:fisheries/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:getpropotionalscreenwidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Sizeconfig.screenheight*0.04,),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getpropotionalscreenwidth(28),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Sizeconfig.screenheight*0.08,),
                SignForm(),
                SizedBox(height: Sizeconfig.screenheight*0.08,),

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
                SizedBox(height: getpropotionalscreenwidth(20),),
                NoAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}







