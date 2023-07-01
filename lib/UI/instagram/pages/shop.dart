import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/instagram/util/expolre_grid.dart';
import 'package:flutter_ui/UI/instagram/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

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
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Icon(Icons.calendar_today,),
              SizedBox(
                width: 4.0,
              ),
              Icon(Icons.menu,),
            ],
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
