import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/instagram/util/account_tab1.dart';
import 'package:flutter_ui/UI/instagram/util/account_tab2.dart';
import 'package:flutter_ui/UI/instagram/util/account_tab3.dart';
import 'package:flutter_ui/UI/instagram/util/account_tab4.dart';
import 'package:flutter_ui/UI/instagram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              right: 20.0,
              left: 20.0,
              bottom: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Profile Picture
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],

                      ),
                    ),
                     SizedBox(
                       width: 8.0,
                     ),
                    //number of posts, follower, following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('236', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),),
                              Text('Posts',),
                            ],
                          ),
                          Column(
                            children: [
                              Text('5366', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),),
                              Text('Followers',),
                            ],
                          ),
                          Column(
                            children: [
                              Text('7668', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),),
                              Text('Following',),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.0,
                ),
                //Name And Bio
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sarah',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'I create apps & games',
                    ),
                    Text(
                      'www.youtube.com/sarah/',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8,),
                          child: Center(
                            child: Text(
                              'Edit Profile',
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5,),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8,),
                          child: Center(
                            child: Text(
                              'Ad Tools',
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5,),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8,),
                          child: Center(
                            child: Text(
                              'Insights',
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
                    children: [
                      BubbleStories(text: 'story 1'),
                      BubbleStories(text: 'story 2'),
                      BubbleStories(text: 'story 3'),
                      BubbleStories(text: 'story 4'),
                    ],
                  ),
                ),
                //To use the TabBar you should use DefaultTabController
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.grid_3x3_outlined,),),
                    Tab(icon: Icon(Icons.video_call,),),
                    Tab(icon: Icon(Icons.shop,),),
                    Tab(icon: Icon(Icons.person,),),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      AccountTab1(),
                      AccountTab2(),
                      AccountTab3(),
                      AccountTab4(),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
