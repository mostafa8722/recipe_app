
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/views/home/categories_component.dart';

import 'package:recipe_app/views/home/categories_component_shimmer.dart';
import 'package:recipe_app/views/home/header_component.dart';
import 'package:recipe_app/views/home/header_component_shimmer.dart';
import 'package:recipe_app/views/home/header_static.dart';
import 'package:recipe_app/views/home/header_static_shimmer.dart';
import 'package:recipe_app/views/home/menus_component.dart';
import 'package:recipe_app/views/home/menus_component_shimmer.dart';
import 'package:recipe_app/views/home/products_component.dart';
import 'package:recipe_app/views/home/products_component_shimmer.dart';
import 'package:recipe_app/views/home/search_component.dart';
import 'package:recipe_app/views/home/users_component.dart';
import 'package:recipe_app/views/home/users_component_shimmer.dart';

class HomeScreen extends StatelessWidget{

  HomeController controller = Get.put(HomeController());
  List<IconData> icons = [
    Icons.home_rounded,
    Icons.bar_chart_rounded,
    Icons.favorite_outline_rounded,
    Icons.person_outline_rounded,
  ];
  @override
  Widget build(BuildContext context) {

    controller.fetchCategories();
    controller.fetchMenu();
    controller.fetchIngredients();
    controller.fetchUsers();
    //controller.fetchProducts(controller.users[0]);
    return Scaffold(
      body:

    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:   Obx((){
        return
          Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: controller.isLoading== true ?
                HeaderComponentShimmer() :
                HeaderComponent(title: controller.users[0].name, subTitle: "what do you want to eat today?", img: controller.users[0].image),

              ),
              SizedBox(height: 20,),
              SearchComponent(),

              Padding(
                padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                child: controller.isLoading== true ?
                HeaderStaticShimmer() :
                HeaderStaticComponent(title: "Populur Menus", onSelected: (){
                  print("tttt");
                }),

              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: controller.isLoading== true ?
                MenusComponentShimmer() :
                MenusComponent(),

              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: controller.isLoading== true ?
                ProductsComponentshimmer() :
                ProductsComponent(),

              ),

              Padding(
                padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                child: controller.isLoading== true ?
                HeaderStaticShimmer() :
                HeaderStaticComponent(title: "Categories", onSelected: (){
                  print("tttt");
                }),

              ),

              Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: controller.isLoading== true ?
                CategoriesComponentShimmer() :
                CategoriesComponent(),

              ),

              Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: controller.isLoading== true ?
                UsersComponentShimmer() :
                UsersComponent(),

              ),
              SizedBox(height: 10,),

            ],
          );
      }),
    ),
      bottomNavigationBar:Container(
        height: 50,
        color: Colors.white,
        child:
        Obx((){
          return    Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:icons.asMap().map((i,e) =>MapEntry(i,BottomCard(e,i)) ).values.toList() ,
          );
        })


      ),
    );
  }
  Widget BottomCard(IconData icon,int index){
    return
      GestureDetector(onTap: (){
        controller.changePage(index);
      },
          child:

      Column(
      children: [
        SizedBox(height: 5,),
        Icon(icon,color:controller.page_selected==index?Colors.green:Colors.grey ,),

        SizedBox(height: 5,),
        controller.page_selected==index ?Container(
          height: 3,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(2)
          ),
        ):Container()
      ],
    ) );
  }
}