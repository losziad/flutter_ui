import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {

  bool isButtonPressed;

  final onTap;
  NeuButton({required this.onTap, required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160.0,
        width: 160.0,
        child: Icon(
          Icons.favorite,
          size: 60.0,
          color: isButtonPressed ? Colors.grey:Colors.red[400],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
             color: isButtonPressed? Colors.grey.shade200: Colors.grey.shade300,
          ),
          boxShadow: isButtonPressed ? [
            //no shadow if button pressed
          ]:[
            //darker shadow on bottom right
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(6,6),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            //lighter shadow on bottom right
            BoxShadow(
              color: Colors.white,
              offset: Offset(-6,-6),
              blurRadius: 15.0,
              spreadRadius: 1.0,

            ),
          ],
        ),
      ),
    );
  }
}
