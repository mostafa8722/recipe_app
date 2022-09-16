
import 'package:flutter/material.dart';
import 'package:recipe_app/utils/constant.dart';

class SearchComponent extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.4)
        ),
        child:  TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon:Icon(Icons.search),
              hintText: "Search",
              hintStyle: roboto
          ),
        )
        );

  }
}