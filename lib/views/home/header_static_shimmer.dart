
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HeaderStaticShimmer extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return

      Shimmer.fromColors(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 10,
                color: Colors.white,
              ),
              Container(
                width: 100,
                height: 10,
                color: Colors.white,
              )
            ],
          )
          , baseColor:Colors.grey.withOpacity(0.3)
          , highlightColor:Colors.grey.withOpacity(0.65) );
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [




         ],

    );
  }
}