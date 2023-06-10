import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
   EmoticonFace({Key? key,required this.emoticonFace}) : super(key: key);
  final String emoticonFace;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            emoticonFace,
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
      ),
    );
  }
}
