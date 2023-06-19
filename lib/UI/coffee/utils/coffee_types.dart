import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {

  const CoffeeTypes({Key? key, required this.coffeeType, required this.isSelected, required this.onTap}) : super(key: key);

  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeType,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: isSelected?Colors.orange:Colors.white,
          ),
        ),
      ),
    );
  }
}
