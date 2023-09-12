import 'package:flutter/material.dart';
import 'card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _selectedItem = 0;
  static List pagesList = <Widget>[
    Card1(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    )
  ];
  void _onItemTapped(selectedItem) {
    setState(() {
      _selectedItem = selectedItem;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
      body: pagesList[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          onTap: (selectedItem) => _onItemTapped(selectedItem),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card1')
          ]),
    );
  }
}
