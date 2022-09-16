
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';
import 'package:recipe_app/models/user.dart';

class UsersComponent extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx((){
      return  Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:controller.users.length ,
            itemBuilder:(BuildContext context, int index)=> buildCard(controller.users[index])

        ),
      );
    });


  }
  Widget buildCard(User user){

    return
     Container(

       height: 60,
       width: Get.width - 60,
       margin: EdgeInsets.symmetric(horizontal: 30),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white
       ),
       child:     Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           Container(


             height: 40,
             width: 40,
             margin: EdgeInsets.only(left: 10),
             decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage(user.image),
                   fit: BoxFit.cover
                 ),
                 shape: BoxShape.circle
             ),



           ),
           SizedBox(width: 4,),
           Column(
             children: [
               Text(user.name,style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold,fontSize: 16),),
               SizedBox(height: 4,),
               Text(" 12 Recipes Shared",style: TextStyle(color: Colors.black.withOpacity(0.45),fontWeight: FontWeight.bold,fontSize: 14),),


             ],
           )
         ],
       ),
     );



  }
}