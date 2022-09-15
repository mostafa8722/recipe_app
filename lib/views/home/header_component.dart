
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget{

  String title,subTitle,img ;

  HeaderComponent({
    required this.title,
    required this.subTitle,
    required this.img,
});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
             children: [
               Text(title),
               Text(subTitle),
             ],
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover
            )
          ),
        )
      ],
    );
  }
}