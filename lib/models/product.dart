
 import 'package:recipe_app/models/user.dart';

class Product {
  String name,image;
  double rate,carb;
  int calorie,fat,protein,weight;
  bool fav;

  User user;
  Product({
   required this.name,
   required this.image,
   required this.rate,
   required this.carb,
   required this.calorie,
   required this.fat,
   required this.protein,
   required this.weight,
   required this.fav,
   required this.user,
 });
 }