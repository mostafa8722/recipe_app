
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';
import 'package:shimmer/shimmer.dart';

class ProductsComponentshimmer extends StatelessWidget{



  @override
  Widget build(BuildContext context) {


      return  Container(
        height: 250,

        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:5,
            itemBuilder:(BuildContext context, int index)=> buildCard()

        ),
      );



  }
  Widget buildCard(){

    return

      Shimmer.fromColors(child:

      Container(
          height: 250,
        width: 200,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),

      )
          , baseColor: Colors.grey.withOpacity(0.3)

          , highlightColor: Colors.grey.withOpacity(0.64));
  }
}