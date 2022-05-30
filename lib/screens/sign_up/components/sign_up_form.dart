import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          buildPassFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          buildPassConfirmFormField(),
          FormError(errors: errors,),
          SizedBox(height: getpropotionalscreenheight(40),),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formkey.currentState.validate())
              {
                Navigator.pushNamed(context, CompleteProfileScreen.routename);
              }
            },
          )
        ],
      ),

    );
  }

  TextFormField buildPassConfirmFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value)
      {
        if(value == password && errors.contains(kMatchPassError))
        {
          setState(() {
            errors.remove(kMatchPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value)
      {
        if (value.isEmpty)
          return "";
        else if(value != password && !errors.contains(kMatchPassError))
        {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        else if (errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Re-enter your password',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Lock.svg",
          )
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) =>password = newValue,
      onChanged: (value)
      {
        password = value;
        if(value.isNotEmpty && errors.contains(kPassNullError))
        {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
        else if(value.length >=8 && errors.contains(kShortPassError))
        {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }

        return null;
      },
      validator: (value)
      {
        if(value.isEmpty && !errors.contains(kPassNullError))
        {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }
        else if(value.length<8 && !errors.contains(kShortPassError))
        {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Lock.svg",
          )
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kEmailNullError))
        {
          setState(() {
            errors.remove(kEmailNullError);
          });

        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError))
        {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value)
      {
        if(value.isEmpty && !errors.contains(kEmailNullError))
        {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError))
        {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Mail.svg",
          )
      ),
    );
  }
}
