
import 'package:flutter/material.dart';

class HeaderStaticComponent extends StatelessWidget{

  String title;
  Function() onSelected;

  HeaderStaticComponent({
    required this.title,
    required this.onSelected,

});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.8)),),
        InkWell(
          onTap:onSelected,
          child:Text("see all",style: TextStyle(fontSize: 14,color: Colors.green.withOpacity(0.8)),),

        )


         ],

    );
  }
}