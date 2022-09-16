
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:recipe_app/controllers/home_controller.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';
import 'package:recipe_app/views/detail_screen.dart';

class ProductsComponent extends StatelessWidget{


  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx((){
      return  Container(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:controller.products.length ,
            itemBuilder:(BuildContext context, int index)=> buildCard(controller.products[index])

        ),
      );
    });


  }
  Widget buildCard(Product product){

    return 
      
      GestureDetector(
        onTap: (){
          Get.to(DetailScreen(product: product));
        },
        child: Container(


            height: 250,
            width: 200,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20)
            ),
            child:
            Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: product.fav?Colors.red.withOpacity(0.8):Colors.black.withOpacity(0.8),
                          shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),),
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
                Expanded(
                    child:Container()
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    height:100 ,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.24),
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 110,
                                child: Text(product.name,overflow:TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),

                              ),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating:1,
                                    minRating: 1,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    tapOnlyMode: false,
                                    itemCount:1,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star_rounded,
                                      color: Colors.amber,
                                      size: 10,

                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),  RatingBar.builder(
                                    initialRating:1,
                                    minRating: 1,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    tapOnlyMode: false,
                                    itemCount:1,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star_rounded,
                                      color: Colors.amber,
                                      size: 10,

                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(width: 4,),
                                  Text(product.rate.toString(),style: TextStyle(color: Colors.white,fontSize: 14),),
                                ],
                              ),
                            ]),

                        SizedBox(height: 4,),
                        Text( '1 Bowl (${product.weight}g)',style: TextStyle(color: Colors.white,fontSize: 14),),
                        SizedBox(height: 4,),
                        Text( '${product.calorie} Kkal | 25% AKG',style: TextStyle(color: Colors.white,fontSize: 14),),
                      ],
                    )

                )

              ],
            )

        ),
      );
  }
}