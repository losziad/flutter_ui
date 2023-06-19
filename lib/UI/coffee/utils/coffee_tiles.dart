import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final String coffeeImage;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImage,
    required this.coffeeName,
    required this.coffeePrice,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                coffeeImage,
              ),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   coffeeName,
                   style: TextStyle(
                     fontSize: 20.0,

                   ),
                 ),
                 SizedBox(
                   height: 4.0,
                 ),
                 Text(
                   'With Almond Milk',
                   style: TextStyle(
                     color: Colors.grey[700],
                   ),
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + coffeePrice,
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                      child: Icon(
                          Icons.add,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
