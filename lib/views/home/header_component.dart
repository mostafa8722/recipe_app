
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget{

  String title,subTitle,img ;

  HeaderComponent({
    required this.title,
    required this.subTitle,
    required this.img,
});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
             children: [

               Text(title,style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 16,fontWeight: FontWeight.bold),),
               SizedBox(height: 5,),
               Text(subTitle,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 14),),
             ],
        ),
       Stack(
         children: [
           Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
                 image: DecorationImage(
                     image: AssetImage(img),
                     fit: BoxFit.cover
                 )
             ),
           ),
           Positioned(
               top: 5,
               right: 5,
               child:
           Container(
             height: 8,
             width: 8,
             decoration: BoxDecoration(

               color: Colors.green,
               shape: BoxShape.circle
             ),
           )
           )
         ],
       )
      ],
    );
  }
}