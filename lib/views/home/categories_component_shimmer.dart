
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesComponentShimmer extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {

      return  Container(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:15 ,
            itemBuilder:(BuildContext context, int index)=> buildCard()

        ),
      );



  }
  Widget buildCard(){

    return
      Shimmer.fromColors(child:

      Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(


              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.circle
              ),



            ),
            SizedBox(height: 4,),
            Container(
              height: 10,
              width: 70,
              color: Colors.white,
            )
          ],
        ),
      ),
          baseColor: Colors.grey.withOpacity(0.3),
          highlightColor: Colors.grey.withOpacity(0.65));



  }
}