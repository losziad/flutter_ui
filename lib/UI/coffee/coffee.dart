import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/coffee/utils/coffee_tiles.dart';
import 'package:flutter_ui/UI/coffee/utils/coffee_types.dart';

class CoffeeUI extends StatefulWidget {
  const CoffeeUI({Key? key}) : super(key: key);

  @override
  State<CoffeeUI> createState() => _CoffeeUIState();
}

class _CoffeeUIState extends State<CoffeeUI> {

  //list of coffee types
  final List coffeeType = [
    //[ coffee type, isSelected ]
    ['Cappucino',true,],
    ['Latte',false,],
    ['Black',false,],
    ['Tea',false,],
  ];
  //user tapped on coffee type
  void coffeeTypeSelected(int index)
  {
    setState(() {
      for(int i = 0 ; i< coffeeType.length;i++)
      {
        coffeeType[i][1] = false;

      }
      coffeeType[index][1] = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //Find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: TextStyle(
                fontSize: 36.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600,),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CoffeeTypes(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: (){
                    coffeeTypeSelected(index);
                  },
                );
              },
              itemCount: coffeeType.length,
            ),
          ),
          //List of Coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                CoffeeTile(
                  coffeeImage: 'lib/UI/coffee/images/coffee2.jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '4.00',
                ),
                CoffeeTile(
                  coffeeImage: 'lib/UI/coffee/images/coffee3.jpg',
                  coffeeName: 'Milk Coffee thing',
                  coffeePrice: '4.30',
                ),
                CoffeeTile(
                  coffeeImage: 'lib/UI/coffee/images/coffee1.png',
                  coffeeName: 'Cappucino',
                  coffeePrice: '4.10',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
