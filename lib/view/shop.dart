import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:url/view/shop_category.dart';
import 'package:url/view/shop_home.dart';
import 'package:url/view/training_home.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Home_Screen1(),
    const Category_Screen1(),
    Traing_Home(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        shadows: const [
          BoxShadow(blurRadius: 4, color: Colors.grey, offset: Offset(10, 4))
        ],
        animationDuration: Durations.long1,
        backgroundColor: Colors.blue[400],
        items: [
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: const Icon(
              Icons.home_sharp,
              color: Colors.black,
            ),
            title: const Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: const Icon(
              Icons.category_rounded,
              color: Colors.black,
            ),
            title: const Text(
              'Category',
              style: TextStyle(fontSize: 18),
            ),
          ),
          FlashyTabBarItem(
            activeColor: Colors.white,
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: const Text(
              'Training',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
        onItemSelected: _onItemTapped,
        iconSize: 20,
        height: 55,
        showElevation: false,
        selectedIndex: _selectedIndex,
        animationCurve: Curves.linear,
      ),
    );
  }
}
