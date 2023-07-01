import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/instagram/util/expolre_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[800],
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
