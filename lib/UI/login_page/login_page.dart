import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/login_page/components/button.dart';
import 'package:flutter_ui/UI/login_page/components/square_tile.dart';
import 'package:flutter_ui/UI/login_page/components/text_field.dart';

class LoginPage extends StatelessWidget {

   LoginPage({Key? key}) : super(key: key);


   final userController = TextEditingController();
   final passwordController = TextEditingController();

   void singUserIn(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                MyTextField(
                  controller: userController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                SizedBox(
                  height: 10.0,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                MyButton(
                  onTap: singUserIn,
                ),
                SizedBox(
                  height: 50.0,
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: Row(
                   children: [
                     Expanded(
                       child:  Divider(
                         thickness: 0.5,
                         color: Colors.grey[400],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                       child: Text(
                         'Or continue with',
                         style: TextStyle(
                           color: Colors.grey[500],
                         ),
                       ),
                     ),
                     Expanded(
                       child:  Divider(
                         thickness: 0.5,
                         color: Colors.grey[400],
                       ),
                     ),
                   ],
                 ),
               ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(
                      imagePath: 'lib/UI/login_page/images/google.png',

                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    SquareTile(
                      imagePath: 'lib/UI/login_page/images/apple.png',

                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.grey[700],

                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
