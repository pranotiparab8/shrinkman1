import 'package:flutter/material.dart';
import 'package:shrinkman1/Widgets/setting.dart';

import 'file_page.dart';
import 'home_page.dart';

class Bottom_Navigation extends StatefulWidget {
  Bottom_Navigation({Key? key}) : super(key: key);

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int _selectedIndex = 0;
  // Widget? child1;
  final widgetOptions = [
    Home_Page(),
    File_Page(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    // switch (_selectedIndex) {
    //   case 0:
    //     child1 = Home_Page();
    //     break;
    //   case 1:
    //     child1 = File_Page();
    //     break;
    //   case 2:
    //     child1 = Home_Page();
    //     break;
    // }
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      //SizedBox.expand(child: child1),
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Color(0xFF064494),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          selectedLabelStyle: TextStyle(fontSize: 1),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '',
              icon: InkWell(
                onTap: () {
                  setState(() {
                    _onItemTapped(0);
                  });
                },
                child: Container(
                  height: 60,
                  width: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _selectedIndex == 0
                        ? Colors.white30
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.home,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: InkWell(
                onTap: () {
                  setState(() {
                    _onItemTapped(1);
                  });
                },
                child: Container(
                    height: 60,
                    width: 85,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: _selectedIndex == 1
                          ? Colors.white30
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.folder,
                          size: 32,
                          color: Colors.white,
                        ),
                        Text(
                          "Files",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: InkWell(
                onTap: () {
                  setState(() {
                    _onItemTapped(2);
                  });
                },
                child: Container(
                  height: 60,
                  width: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _selectedIndex == 2
                        ? Colors.white30
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.menu,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          elevation: 5,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
