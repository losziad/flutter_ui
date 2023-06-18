 import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
    SquareTile({Key? key, required this.imagePath}) : super(key: key);
   final String imagePath;
   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(20.0),
       decoration: BoxDecoration(
         border: Border.all(
           color: Colors.white,
         ),
         borderRadius: BorderRadius.circular(16.0),
         color: Colors.grey[200],
       ),
        child: Image.asset(
          imagePath,
          height: 40.0,
        ),
     );
   }
 }
