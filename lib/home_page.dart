import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/confetti_package/confetti_package.dart';
import 'package:flutter_ui/UI/health/health_ui.dart';
import 'package:flutter_ui/UI/health/utils/emoticon_face.dart';
import 'package:flutter_ui/UI/health/utils/exercises_tile.dart';
import 'package:flutter_ui/UI/neu_button/neu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //FOR NEU BUTTON
  bool isButtonPressed = false;
  void buttonPressed(){
    setState(() {
      if(isButtonPressed == false)
        {
          isButtonPressed = true;
        }
      else if(isButtonPressed == true)
        {
          isButtonPressed = false;
        }
    });
  }

  //FOR CONFETTI PACKAGE
  final controller = ConfettiController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Health(),
      ),
    );
  }
}
