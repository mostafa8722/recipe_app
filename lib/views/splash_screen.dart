


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/utils/constant.dart';
import 'package:recipe_app/views/home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(microseconds: 3000),(){
      Get.off(HomeScreen());
    });
    return Scaffold(
      body:
      Column(
        children: [
          Container(
            height: Get.height*0.5,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/spork.jpeg"),
                fit:BoxFit.cover
              )
            ),
          ),
          Text(
            'Let\'s cook your own food\nand adjust your diet',
            textAlign: TextAlign.center,
            style: roboto.copyWith(
                fontSize: 24, height: 1.5, color: black),
          ),
          Text(
            'Don\'t be confused, Complete your nutritional\nneeds by choosing food here!',
            textAlign: TextAlign.center,
            style: roboto.copyWith(
                color: black.withOpacity(0.6),
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
        ],
      )
      ,
    );
  }
}