
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shimmer/shimmer.dart';

class UsersComponentShimmer extends StatelessWidget{



  @override
  Widget build(BuildContext context) {


      return  Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:5 ,
            itemBuilder:(BuildContext context, int index)=> buildCard()

        ),
      );



  }
  Widget buildCard(){

    return
     Container(

       height: 50,
       width: Get.width - 60,
       margin: EdgeInsets.symmetric(horizontal: 30),

       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Colors.white
       ),
       child:
      Shimmer.fromColors(child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 10),
           decoration: BoxDecoration(
            color: Colors.white,
             shape: BoxShape.circle,
            ),



          ),
          SizedBox(width: 4,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 80,
                color: Colors.white,),
              SizedBox(height: 4,),

              Container(
                height: 10,
                width: 80,
                color: Colors.white,)

            ],
          )
        ],
      ),

          baseColor: Colors.grey.withOpacity(0.3)
          , highlightColor: Colors.grey.withOpacity(0.65)
      )
     );



  }
}