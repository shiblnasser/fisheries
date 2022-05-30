import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal : getpropotionalscreenwidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: Sizeconfig.screenheight*0.02,),
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: getpropotionalscreenwidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text('Complete your details or continue\nwith social media', textAlign: TextAlign.center,),
              SizedBox(height: Sizeconfig.screenheight*0.05,),
              ProfileForm(),
              SizedBox(height: getpropotionalscreenheight(30),),
              Text(
                'By continuing you confirm that you agree\nwith our Terms and Conditions',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


