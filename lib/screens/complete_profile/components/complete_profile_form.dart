import 'package:fisheries/components/custom_suffic_icons.dart';
import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/components/form_error.dart';
import 'package:fisheries/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formkey = GlobalKey<FormState>();
  String firstName;
  String Lastname;
  String phonenumber;
  String address;
  List <String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          buildFirstNameFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          builLastnameFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          buildPhonenumberFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          buildAddressFormField(),
          SizedBox(height: getpropotionalscreenheight(30),),
          FormError(errors: errors,),
          SizedBox(height: getpropotionalscreenheight(30),),
          DefaultButton(
            text: 'Continue',
            press: (){
              if(_formkey.currentState.validate())
              {
                Navigator.pushNamed(context, OtpScreen.routename);
              }
            },
          ),
        ],
      ),

    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => address = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kAddressNullError))
        {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value)
      {
        if (value.isEmpty && !errors.contains(kAddressNullError))
        {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Address',
          hintText: 'Enter your Address',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Location point.svg",
          )
      ),
    );
  }

  TextFormField buildPhonenumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kPhoneNumberNullError))
        {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value)
      {
        if (value.isEmpty && !errors.contains(kPhoneNumberNullError))
        {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter your phone number ',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/Phone.svg",
          )
      ),
    );
  }

  TextFormField builLastnameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => Lastname = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kNamelNullError))
        {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      validator: (value)
      {
        if (value.isEmpty && !errors.contains(kNamelNullError))
        {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your Last name',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/User.svg",
          )
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value)
      {
        if(value.isNotEmpty && errors.contains(kNamelNullError))
        {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      validator: (value)
      {
        if (value.isEmpty && !errors.contains(kNamelNullError))
        {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        else if(errors.length>0)
          return "";
        return null;
      },
      decoration: InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your first name',
          suffixIcon: CustomSuffixIcon(
            svgicon: "assets/icons/User.svg",
          )
      ),
    );
  }
}
