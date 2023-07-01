import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/instagram/util/bubble_stories.dart';
import 'package:flutter_ui/UI/instagram/util/user_posts.dart';

class UserHome extends StatelessWidget {
   UserHome({Key? key}) : super(key: key);

  final List people = [
    'Ziad',
    'Sarsor',
    'Sarah',
    'Youssef',
    'Om El Soss',
    'Zozz',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite,
                  ),
                ),
                Icon(
                  Icons.share,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 130.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index],);
              },
            ),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return   UserPosts(
                  name: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
