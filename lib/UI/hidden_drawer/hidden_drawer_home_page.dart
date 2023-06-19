import 'package:flutter/material.dart';

class HiddenHomePage extends StatefulWidget {
  const HiddenHomePage({Key? key}) : super(key: key);

  @override
  State<HiddenHomePage> createState() => _HiddenHomePageState();
}

class _HiddenHomePageState extends State<HiddenHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
