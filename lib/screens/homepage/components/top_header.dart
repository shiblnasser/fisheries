import 'package:fisheries/screens/cart/cart.dart';
import 'package:fisheries/screens/complete_profile/complete_profile_screen.dart';
import 'package:fisheries/screens/forget_password/foget_password_screen.dart';
import 'package:fisheries/screens/sign_in/sign_in_screen.dart';
import 'package:fisheries/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class TopBanner extends StatelessWidget {
final int number;

  const TopBanner({Key key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
    
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getpropotionalscreenwidth(20)),
          child: Container(
          
              
              width:Sizeconfig.screenwidth * 0.6,
              decoration: BoxDecoration(
                color: ksecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
      
              ),
            child: TextField(
                onChanged: (value){},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "search product",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: getpropotionalscreenwidth(20),
                vertical: getpropotionalscreenheight(15))
              ),),
            ),
        ),
        Round_btn(icon: 'assets/icons/Cart Icon.svg', nu:number,press: ()=>Navigator.pushNamed(context, Add_cart.routename),),
        Round_btn(icon: 'assets/icons/Bell.svg'),
     
      ],
    )
    );
  }
}



class Round_btn extends StatelessWidget {
  const  Round_btn({Key key, this.icon, this.nu = 0, this.press}) : super(key: key);

  final String icon;
  final int nu;
  final Function press;

  @override

  Widget build(BuildContext build) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(25),
          child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
              padding: EdgeInsets.all(getpropotionalscreenheight(10)),
              width: 45  ,
              height: 45  ,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                color:ksecondaryColor.withOpacity(0.1),
              ),
              child: SvgPicture.asset(icon),
          ),
          if(nu!= 0)
          Positioned(
            right: 0,
            top: -3,
                    child: Container(
                      
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),
              child: Center(
                              child: Text(
                   nu.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}