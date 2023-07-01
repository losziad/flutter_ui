import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/instagram/pages/account.dart';
import 'package:flutter_ui/UI/instagram/pages/home.dart';
import 'package:flutter_ui/UI/instagram/pages/reels.dart';
import 'package:flutter_ui/UI/instagram/pages/seach.dart';
import 'package:flutter_ui/UI/instagram/pages/shop.dart';

class InstagramUI extends StatefulWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  State<InstagramUI> createState() => _InstagramUIState();
}

class _InstagramUIState extends State<InstagramUI> {

  int selectedIndex = 0;

  void navigateBottomBar(int index)
  {
    setState(() {
      selectedIndex = index;
    });
  }

  //Different Page to Navigate To
  final List<Widget> children = [
  UserHome(),
  UserSearch(),
  UserReels(),
  UserShop(),
  UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
            ),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
            ),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'account',
          ),
        ],
      ),
    );
  }
}
