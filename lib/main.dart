import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/login_page/login_page.dart';
import 'package:flutter_ui/UI/neu_button/neu_button.dart';
import 'package:flutter_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      //  primarySwatch: Colors.deepPurple,
      ),
      home:  HomePage(),
      darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        // primarySwatch: Colors.orange,
      ),
    );
  }
}
