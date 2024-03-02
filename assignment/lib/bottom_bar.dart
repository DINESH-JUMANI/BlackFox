import 'package:assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedPageIndex = 0;
  final screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.view_headline_rounded,
          size: 40,
          color: Color.fromARGB(255, 131, 141, 255),
        ),
        title: const Icon(
          Icons.abc_sharp,
          size: 60,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 131, 141, 255)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.line_style_outlined,
                  color: Color.fromARGB(255, 131, 141, 255),
                  size: 20,
                ),
                SizedBox(width: 3),
                Text(
                  '50',
                  style: TextStyle(
                    color: Color.fromARGB(255, 131, 141, 255),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.house_outlined,
              color: Colors.black,
              size: 35,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
