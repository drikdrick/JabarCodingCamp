import 'package:flutter/material.dart';
import 'package:tugas12/Tugas13/home_screen.dart';
import 'package:tugas12/Tugas15/account_page.dart';
import 'package:tugas12/Tugas15/drawer_page.dart';
import 'package:tugas12/Tugas15/search_page.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  late int bottomIndex;
  @override
  void initState() {
    super.initState();
    bottomIndex = 0;
  }

  final List<BottomNavigationBarItem> _bottomItems = [
    const BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(
        Icons.home,
        color: Colors.blue,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Search",
      icon: Icon(Icons.search_outlined),
      activeIcon: Icon(
        Icons.search,
        color: Colors.blue,
      ),
    ),
    const BottomNavigationBarItem(
      label: "Account",
      icon: Icon(Icons.account_box_outlined),
      activeIcon: Icon(
        Icons.account_box,
        color: Colors.blue,
      ),
    ),
  ];

  final List<Widget> _widget = [
    const HomeScreen(),
    const SearchPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: const drawer_screen(),
      body: _widget[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItems,
        currentIndex: bottomIndex,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },
      ),
    );
  }
}
