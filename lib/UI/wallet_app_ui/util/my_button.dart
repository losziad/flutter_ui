import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {


  final String iconImagePath;
  final String buttonText;


  MyButton({
    required this.iconImagePath, required this.buttonText
});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        //Icon
        Container(
          height: 100.0,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 40.0,
                spreadRadius: 10.0,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
                iconImagePath,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        //Text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
