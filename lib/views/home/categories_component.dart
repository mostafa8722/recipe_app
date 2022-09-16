
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';

class CategoriesComponent extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx((){
      return  Container(
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:controller.categories.length ,
            itemBuilder:(BuildContext context, int index)=> buildCard(controller.categories[index])

        ),
      );
    });


  }
  Widget buildCard(Category category){

    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(


            height: 50,
            width: 50,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: category.color,
                shape: BoxShape.circle
            ),
            child:Center(child: Image.asset(category.image,height: 35,),)


        ),
        SizedBox(height: 4,),
        Text(category.title,style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold,fontSize: 13),),
      ],
    );



  }
}