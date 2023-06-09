import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/neu_button/neu_button.dart';

class ConfettiPackage extends StatefulWidget {
  const ConfettiPackage({Key? key}) : super(key: key);

  @override
  State<ConfettiPackage> createState() => _ConfettiPackageState();
}

class _ConfettiPackageState extends State<ConfettiPackage> {

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
