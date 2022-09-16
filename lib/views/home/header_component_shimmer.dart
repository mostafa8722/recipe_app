
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HeaderComponentShimmer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(

        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 5,),
                Container(
                  height: 10,
                  width: 250,
                  color: Colors.white,
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),

              ],
            )
          ],
        ),

        baseColor:
        Colors.grey.withOpacity(0.4),
        highlightColor:    Colors.grey.withOpacity(0.7)) ;

  }
}