import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonPackage extends StatefulWidget {
  const LikeButtonPackage({Key? key}) : super(key: key);

  @override
  State<LikeButtonPackage> createState() => _LikeButtonPackageState();
}

class _LikeButtonPackageState extends State<LikeButtonPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LikeButton(
          size: 80.0,
          likeCount: 20,
          countPostion: CountPostion.bottom,
        ),
      ),
    );
  }
}
