import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
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
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
         appBar: AppBar(),
          body: Center(
            child: MaterialButton(
              onPressed: (){
                if(isPlaying)
                {
                  controller.stop();
                }
                else
                {
                  controller.play();

                }
                isPlaying = !isPlaying;
              },
              child: Text('Party Time'),
              color: Colors.deepPurple[200],
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: controller,
        blastDirection: pi / 2,
        ),
      ],
    );
  }
}
