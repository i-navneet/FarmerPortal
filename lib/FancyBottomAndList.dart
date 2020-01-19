import 'package:flutter/material.dart';
import 'fancy_bottom_navigation.dart';
import 'GroupSell.dart';
import 'Transport.dart';
import 'Buy.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Annapurna',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> pages = [
    GroupSell(
      key: PageStorageKey('Page1'),
    ),
    Transport(
      key: PageStorageKey('Page2'),
    ),
    Buy(
      key: PageStorageKey('Page3'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex)=> FancyBottomNavigation(
  tabs: [
  TabData(iconData: Icons.home, title: "Home"),
  TabData(iconData: Icons.local_shipping, title: "Transportation"),
  TabData(iconData: Icons.shopping_cart, title: "Sell/Buy")
  ],
  onTabChangedListener: (position) {
  setState(() {
  _selectedIndex = position;
            }
    );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}