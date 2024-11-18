import 'package:flutter/material.dart';
class MyCurd extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String desCription;
  final Color imageBacground;
  final String price;
  final Color boxColor;
  const MyCurd({super.key,
    required this.boxColor,
    required this.imageBacground,
  required this.imagePath,
    required this.titleText,
    required this.desCription,
    required this.price,

  });

  @override
  Widget build(BuildContext context) {
return Container(
  decoration: BoxDecoration(
    color: boxColor,
    borderRadius: BorderRadius.circular(12),
    boxShadow:[
      BoxShadow(
        color: Colors.grey.shade500,
        blurRadius: 10,
        spreadRadius: 4,
        offset: Offset(0, 0)
      )
    ]
  ),
  width: 160,
  height: 270,
  child: Column(
    children: [

    Expanded(
      flex: 2,
      child: Container(
        color: imageBacground,
        width: 160,
        child: Image.asset(imagePath),
      ),
    ),
      
      SizedBox(
        height: 20,
      ),
      Expanded(
        child: Column(
          children: [
            Text(titleText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,

            ),),
            Text(desCription,
              style: TextStyle(
                fontSize: 20,

              ),
            ),
           Container(
             width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$50",
                      style: TextStyle(

                        decoration: TextDecoration.lineThrough,
                      ),),
                  SizedBox(width: 5,),
                  Text(price,
                  style: TextStyle(
                  ),)
                ],
              ),
            )
          ],
        ),
      )

    ],
  ),
);
  }
}


