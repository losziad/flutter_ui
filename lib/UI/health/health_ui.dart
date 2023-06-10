import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/health/utils/emoticon_face.dart';
import 'package:flutter_ui/UI/health/utils/exercises_tile.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.grey[600],),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message,color: Colors.grey[600],),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.grey[600],),
              label: ''
          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Hi, Ziad!',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '23 Jan, 2021',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      //Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),

                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  //4 Different Faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 😩 ',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 🙂 ',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 😃 ',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 🥳 ',
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  )
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //List View Of Exercises
                      Expanded(
                        child: ListView(
                          children: [
                            ExercisesTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercise: 15,
                              color: Colors.orange,
                            ),
                            ExercisesTile(
                              icon: Icons.person,
                              exerciseName: 'Reading Skills',
                              numberOfExercise: 8,
                              color: Colors.green,
                            ),
                            ExercisesTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberOfExercise: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
