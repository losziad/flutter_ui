import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/hidden_drawer/hidden_drawer_home_page.dart';
import 'package:flutter_ui/UI/hidden_drawer/settings.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> pages = [];

  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: Colors.white,
  );
  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'HomePage',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.deepPurple,
          ),
        HiddenHomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,

        ),
        Settings(),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: pages,
        backgroundColorMenu: Colors.deepPurple.shade200,
      initPositionSelected: 0,
      slidePercent: 60.0,

    );
  }
}
