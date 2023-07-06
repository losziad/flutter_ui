import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
   NeuBox({Key? key,required this.child}) : super(key: key);
   final child;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child,),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          //Darker Shadow in the button right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(5,5),
          ),
          //Liter Shadow in the top left
          BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5,-5),
          ),
        ],
      ),
    );
  }
}
