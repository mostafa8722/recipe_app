
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:shimmer/shimmer.dart';

class MenusComponentShimmer extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Container(
      height: 30,
      child:   ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:5 ,
          itemBuilder:(BuildContext context, int index)=> buildCard()

      ),
    );





  }
  Widget buildCard(){

    return
      Shimmer.fromColors(child:

      Container(
        height: 30,
        width: 70,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        margin: EdgeInsets.only(left: 10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),

      ),
          baseColor:
          Colors.grey.withOpacity(0.4),
    highlightColor:    Colors.grey.withOpacity(0.7)
      );

  }
  }