import 'package:fisheries/components/default_button.dart';
import 'package:fisheries/constants.dart';
import 'package:fisheries/screens/cart/components/body.dart';
import 'package:fisheries/screens/homepage/components/top_header.dart';
import 'package:fisheries/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'category_bar.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<int> added = new List();
  
  int selected = -1;
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
        children: <Widget>[
          TopBanner(number: number),
            Categorybar(),
          Product_Details(),
        ],
      ),
    );
  }

  Widget Product_Details() {
    return Expanded(
              child: GridView.count(
                crossAxisCount: 2,
              childAspectRatio: 0.8,
      children: 
       List.generate(5, (index) {
        return Stack(
          children: <Widget>[
            
            InitialProduct(image: 'assets/images/splash_1.png', text_1: "sardine fish",text_2: "small",price: "45", index: index),
            if (selected == index)
            AddtoCart(index: index)
          ],
        );
        
       }),
       

      
      ),
    );
  }

  Widget AddtoCart({int index}) {
    return InkWell(
      onTap: (){
        setState(() {
          selected = -1;
        });
      },
          child: SizedBox(
        height: 300,
        width: 200,
            child: Container(
           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height:200,
              width: 150,
          decoration: BoxDecoration(
            
            color: ksecondaryColor,
            borderRadius: BorderRadius.circular(10)
            ),
           child: Column(
             
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Padding(
                 padding:  EdgeInsets.only(right: 10),
                 child: SizedBox(
                 
                   height : 75, width: 75, child: SvgPicture.asset('assets/icons/Cart Icon.svg', color: Colors.black,)),
               ),
               SizedBox(height: 40,),
              InkWell(
                onTap: (){
                
                 setState(() {
                   if(added.contains(index))
                   {
                    number--;
                   added.remove(index);
                   }
                   else
                   {
                     number++;
                   added.add(index);
                   }
                   
                 });
                
                },
                          child: Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kPrimarycolor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text(!added.contains(index)? 'ADD TO CART' : "REMOVE FROM CART", style: TextStyle(color: Colors.white),)),
                ),
              )
             ],
           )),
      ),
    );
  }

  Widget InitialProduct({String image, String text_1, String text_2, String price, int index}) {
    return InkWell(
      onTap: (){
        setState(() {
          selected = index;
        });
      },
          
            child: SizedBox(
              height: 300,
              width: 200,
                          child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          height:200,
          width: 150,
          decoration: BoxDecoration(
              color: kPrimarycolor,
          borderRadius: BorderRadius.circular(10),
        
          ),
          child: Padding(
              padding:  EdgeInsets.symmetric(vertical:25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: Image.asset(image, color: Colors.white,)
                    ),
                  Text(text_1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getpropotionalscreenwidth(15)
                  ),
                ),
                  Text(text_2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getpropotionalscreenwidth(10)
                  ),
                ),
                Spacer(),
                Text("Rs " +price.toString(),
                  style: TextStyle(
                    color: ksecondaryColor,
                    fontSize: getpropotionalscreenwidth(20),
                    fontWeight: FontWeight.bold
                  ),
                ),
                
        
                  
                ],
              ),
          ),
        ),
            ),
      
    );
  }
}



  

