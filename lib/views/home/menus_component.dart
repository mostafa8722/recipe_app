
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/menu.dart';

class MenusComponent extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx((){
      return  Container(
        height: 30,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:controller.menus.length ,
            itemBuilder:(BuildContext context, int index)=> buildCard(controller.menus[index])

        ),
      );
    });


  }
  Widget buildCard(Menu menu){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: controller.menu_selected==menu.id ? Colors.green:Colors.grey[300],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(menu.title,style: TextStyle(
          color: controller.menu_selected==menu.id?Colors.white:Colors.black.withOpacity(0.7)
      ),),
    );
  }
}