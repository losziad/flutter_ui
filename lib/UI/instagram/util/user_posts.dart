import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
   UserPosts({Key? key, required this.name}) : super(key: key);
   final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              //Profile Photo
            Row(
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
              Icon(Icons.menu,),

            ],
          ),
        ),
        //Post
        Container(
          height: 400.0,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline,),
                  ),
                  Icon(Icons.share,),
                ],
              ),
              Icon(Icons.bookmark,),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children:const [
              Text(
                  'Liked by',
              ),
              Text(
                ' Ziad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' and',
              ),
              Text(
                ' others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0,),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(text: name,style: TextStyle(fontWeight: FontWeight.bold),),
                TextSpan(text: ' I turn the dirt they throwing int riches til im filthy'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
