

 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app/models/category.dart';
import 'package:recipe_app/models/ingredient.dart';
import 'package:recipe_app/models/menu.dart';
import 'package:recipe_app/models/product.dart';
import 'package:recipe_app/models/user.dart';

class HomeController extends GetxController{

   var ingredients=  <Ingredient>[].obs;
   var products = <Product>[].obs;
   var users = <User>[].obs;
   var categories = <Category>[].obs;
   var menus = <Menu>[].obs;
   var isLoading = false.obs;
   var menu_selected = 1.obs;
   var page_selected = 0.obs;


   changePage(int index){
     page_selected.value = index;
   }
   fetchCategories(){
     isLoading(true);
    categories.value = [
     Category(title: 'Oats', image: 'assets/images/oats.png', color: Colors.grey),
     Category(title: 'Cereals', image: 'assets/images/cereal.png', color: Colors.pink),
     Category(title: 'Fruits', image: 'assets/images/banana.png', color: Colors.blue),
     Category(title: 'Vegetable', image: 'assets/images/corn.png', color: Colors.orange),
     Category(
         title: 'Bread', image: 'assets/images/bread.png', color: Colors.brown.shade400),
    ];
   }
   fetchUsers(){
    users.value = [
     User(image: 'assets/images/girls/girl1.jpg', name: 'Sunny Natasha'),
     User(image: 'assets/images/girls/girl2.jpg', name: 'Annie Smith'),
     User(image: 'assets/images/girls/girl3.jpg', name: 'Kareena Ameera'),
    ];
    fetchProducts(users[0]);
   }

   fetchMenu(){

     menus.value = [
       Menu(title: 'Breakfast', id: 1),
       Menu(title: 'Lunch', id: 2),
       Menu(title: 'Dinner', id: 3),
       Menu(title: 'Snack', id: 4),
       Menu(title: 'Cheat Menu', id: 5),


     ];
   }




   fetchProducts(User user){
    products.value = [  Product(
        user: user,
        image: 'assets/images/shrimp-kale.jpg',
        name: 'Shrimp Kale',
        rate: 4,
        calorie: 300,
        weight: 300,
        fat: 30,
        protein: 15,
        fav: true,
        carb: 15),
     Product(
         user: user,
         image: 'assets/images/chicken-salad-with-tangy-lime-dressing.jpg',
         name: 'chicken Salad With Tangy Lime Dressing',
         rate: 4.3,
         weight: 250,
         calorie: 320,
         fav: false,
         fat: 30,
         protein: 15,
         carb: 15),
     Product(
         user: user,
         image: 'assets/images/chickpea-quinoa-salad.jpg',
         name: 'Chickpea Quinoa Salad',
         rate: 4.3,
         fav: true,
         weight: 200,
         calorie: 320,
         fat: 30,
         protein: 15,
         carb: 15),
     Product(
         user: user,
         image: 'assets/images/grilled-chicken-salad.jpg',
         name: 'Grilled Chicken Salad',
         rate: 5.0,
         fav: true,
         weight: 400,
         calorie: 420,
         fat: 40,
         protein: 35,
         carb: 15),
     Product(
         user: user,
         image: 'assets/images/mixed-salad.jpg',
         name: 'Mixed Salad',
         rate: 4.5,
         fav: false,
         weight: 200,
         calorie: 120,
         fat: 40,
         protein: 15,
         carb: 15),
    ];
    Future.delayed(Duration(microseconds: 1000),(){
      isLoading(false);
    });
   }
   fetchIngredients(){
    ingredients.value =  [
     Ingredient(
         color: Colors.orange.shade200,
         name: 'Potato',
         image: 'assets/images/potato.png'),
     Ingredient(color: Colors.blue, name: 'onion', image: 'assets/images/onion.png'),
     Ingredient(
         color: Colors.deepOrange.shade200,
         name: 'Almond',
         image: 'assets/images/almond.png'),
     Ingredient(
         color: Colors.yellow, name: 'Broccoli', image: 'assets/images/broccoli.png'),
     Ingredient(color: Colors.grey, name: 'Ginger', image: 'assets/images/ginger.png'),
    ];
   }

}