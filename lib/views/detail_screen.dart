
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/product.dart';
import 'package:recipe_app/utils/constant.dart';
import 'package:recipe_app/utils/my_circular.dart';
import 'package:recipe_app/views/details/ingredients_component.dart';
import 'package:recipe_app/views/home/header_static.dart';

import '../utils/custom_clip_path.dart';

class DetailScreen extends StatelessWidget{
  HomeController controller = Get.find();
  Product product ;
  DetailScreen({required this.product});
  @override
  Widget build(BuildContext context) {
   controller.fetchIngredients();
    return
      Scaffold(
        backgroundColor: Colors.white,
        body:

        SizedBox(
          height: Get.height,
          child:  Stack(
            children: [
              Container(
                height:Get.height* 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(


                  ),
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.cover,
                  ),

                ),
                child:


                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child:     Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                            ),

                          ),
                          GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child:     Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.more_vert,color: Colors.white,),
                            ),

                          )
                        ],
                      ),
                    )
                  ],
                ),

              ),

              Positioned(child:
                  ClipPath(
                       clipper: ClipPathClass(),
                    child: Container(
                      height:60,
                      width:60,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(1),


                        ),
                      ),

                    ),
                bottom: Get.height*  0.60,
                  ),




            Positioned(child:
            Container(
              height:Get.height*  0.60,
              width:Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),


                ),
              ),
              child:
             SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child:  Column(children: [

                 SizedBox(height: 10,),
                 Padding(
                     padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Container(
                               height: 45,
                               width: 45,
                               decoration: BoxDecoration(
                                   image: DecorationImage(
                                       image: AssetImage(product.user.image),
                                       fit: BoxFit.cover
                                   ),
                                   shape:BoxShape.circle
                               ),
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 Text(product.user.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),),
                                 Text("12 recipes shared",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                               ],
                             )
                           ],
                         ),

                         Column(
                           children: [
                             Row(
                               children: [
                                 Text(product.rate.toString(),style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 14),),
                                 SizedBox(width: 4,),
                                 RatingBar.builder(
                                   initialRating:product.rate,
                                   minRating: 1,
                                   itemSize: 20,
                                   direction: Axis.horizontal,
                                   allowHalfRating: false,
                                   tapOnlyMode: false,
                                   itemCount:5,
                                   itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                   itemBuilder: (context, _) => Icon(
                                     Icons.star_rounded,
                                     color: Colors.amber,
                                     size: 10,

                                   ),
                                   onRatingUpdate: (rating) {
                                     print(rating);
                                   },
                                 ),
                               ],
                             ),
                             SizedBox(height: 5,),
                             Text("(24 reviews)",style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                           ],
                         )
                       ],
                     )


                 ),




                 Padding(
                     padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                     child:
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                         Column(
                           children: [
                             Text(product.name,style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.bold,fontSize: 16),),
                             SizedBox(height: 4,),
                             Text( '1 Bowl (${product.weight}g)',style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 14),),
                           ],
                         ),
                         Text("See details",style: TextStyle(color: Colors.green,fontSize: 15),)
                       ],
                     )
                 ),

                 Padding(
                     padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                     child:
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [

                         MyCircular(
                           color: green,
                           header: 'Carbs',
                           footer: '${product.carb} g',
                           footer_: '(56%)',
                           data: 0.4,
                         ),
                         MyCircular(
                           color: red,
                           header: 'Fat',
                           footer: '${product.fat} g',
                           footer_: '(72%)',
                           data: 0.99,
                         ),
                         MyCircular(
                           color: orange,
                           header: 'Protein',
                           footer: '${product.protein} g',
                           footer_: '(8%)',
                           data: 0.2,
                         ),
                         MyCircular(
                           color: green,
                           header: 'Calories',
                           footer: '${product.calorie} kkal',
                           footer_: '',
                           data: 0.7,
                         ),
                       ],
                     )
                 ),

                 Padding(
                     padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                     child: HeaderStaticComponent(title: "Ingredient", onSelected: (){
                       print("tttt");
                     })),

                 Padding(
                   padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                   child: IngredientsComponent()
                   ,

                 ),
                 SizedBox(height: 20,)
               ],),
             ),
            ),bottom: 0,
            ),
              Positioned(
                  bottom:Get.height*0.6-20 ,
                  right: 20,
                  child:
                  Container(
                 padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffeeeeee),
                        shape: BoxShape.circle
                    ),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: product.fav?Colors.red.withOpacity(0.8):Colors.black.withOpacity(0.8),
                          shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),),
                    ),
                  )
              ),
            ],
          ),
        ),
      );
  }

}


