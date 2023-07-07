import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/wallet_app_ui/util/my_button.dart';
import 'package:flutter_ui/UI/wallet_app_ui/util/my_card.dart';
import 'package:flutter_ui/UI/wallet_app_ui/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletAppUI extends StatefulWidget {
  const WalletAppUI({Key? key}) : super(key: key);

  @override
  State<WalletAppUI> createState() => _WalletAppUIState();
}

class _WalletAppUIState extends State<WalletAppUI> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32.0,
                  color: Colors.pink[300],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            //App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            //Cards
            Container(
              height: 200.0,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    color: Colors.deepPurple[300],
                    balance: 5250.25,
                    cardNumber: 123456789,
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                  MyCard(
                    expiryYear: 23,
                    expiryMonth: 11,
                    cardNumber: 123456789,
                    balance: 342.23,
                    color: Colors.blue[400],
                  ),
                  MyCard(
                    color: Colors.green[400],
                    balance: 420.25,
                    cardNumber: 123456789,
                    expiryMonth: 8,
                    expiryYear: 22,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(),
            ),
            SizedBox(
              height: 25.0,
            ),

            //3 Button--> Send, Play, Bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Send Button
                  MyButton(
                    iconImagePath: 'lib/UI/wallet_app_ui/icons/send-money.png',
                    buttonText: 'Send',
                  ),
                  //Pay Button
                  MyButton(
                    iconImagePath: 'lib/UI/wallet_app_ui/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),
                  //Bills Button
                  MyButton(
                    iconImagePath: 'lib/UI/wallet_app_ui/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            //Column--> State and Transaction
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  //Statistics
                  MyListTile(
                    iconImagePath: 'lib/UI/wallet_app_ui/icons/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubTitle: 'Payment and Income',
                  ),

                  //Transaction
                  MyListTile(
                    iconImagePath: 'lib/UI/wallet_app_ui/icons/transaction.png',
                    tileTitle: 'Transaction',
                    tileSubTitle: 'Transaction History',
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
