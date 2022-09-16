
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/views/splash_screen.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: SplashScreen(),
    );
  }
}