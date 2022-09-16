
 import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCircular extends StatelessWidget{


  String header,footer,footer_;
  double data;
  Color color;

  MyCircular({
    required this.header,
    required this.footer,
    required this.footer_,
    required this.data,
    required this.color,
});
  @override
  Widget build(BuildContext context) {

    return CircularPercentIndicator(

        radius: 20,
      circularStrokeCap: CircularStrokeCap.round,
      percent: data,
      lineWidth: 7,
      reverse: true,
      animation: true,
      animationDuration: 500,
      restartAnimation: true,
      progressColor: color,
      header: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(header,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),),
      ),
      footer:
      Padding(
        padding: EdgeInsets.only(bottom: 10),
        child:
        Row(
          children: [
            Text(footer,style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 12),),
            SizedBox(width: 3,),
            Text(footer_,style: TextStyle(color: color,fontSize: 12),),

          ],
        )
        ,
      ),

    );
  }
}