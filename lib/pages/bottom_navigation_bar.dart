import 'package:basic_flutter/pages/home_page.dart';
import 'package:basic_flutter/pages/search_page.dart';
import 'package:basic_flutter/pages/setting_page.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbar> {
  int selectedindex = 0;
  List<Widget> selectedPages = [
    const HomePage(),
    const SearchPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Quis Form',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 219, 225, 227),
        ),
        body: selectedPages[selectedindex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            child: BottomNavigationBar(
                currentIndex: selectedindex,
                backgroundColor: Colors.white,
                selectedItemColor: const Color.fromARGB(255, 9, 92, 160),
                unselectedItemColor: const Color.fromARGB(255, 35, 33, 33),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                onTap: (value) {
                  setState(() {
                    selectedindex = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                    backgroundColor: Colors.black,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                    backgroundColor: Colors.black,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Setting',
                    backgroundColor: Colors.black,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
