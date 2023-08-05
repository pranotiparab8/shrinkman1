import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrinkman1/photo.dart';

import 'FAQ1.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFEFE),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: SvgPicture.asset("assets/images/Shrinkman Logo.svg"),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 8.0, right: 24),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQ1()),
                  );
                },
                child: const Icon(Icons.help_outline,
                    color: Colors.red, size: 24)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 1.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 5  horizontally
                      1.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              child: Divider(height: 0.5, color: Color(0xffDDDDDD))),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SvgPicture.asset("assets/images/Pro.svg"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 17),
            child: Text(
              "Hello Sooraj",
              style: GoogleFonts.lato(
                  color: Color(0xFFD4001A),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 5),
            child: Text(
              "Welcome to Shrinkman",
              style: GoogleFonts.lato(color: Colors.grey[600], fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 17),
            child: Text(
              "Choose a type of file to\ncompress",
              style: GoogleFonts.lato(
                color: Color(0xFF064494),
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 145.0,
                width: 145.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 4.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Photo()),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/images/Photo tab.svg",
                    width: 170,
                  ),
                ),
              ),
              Container(
                height: 145.0,
                width: 145.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 4.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  "assets/images/PDF tab.svg",
                  width: 170,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 145.0,
                width: 145.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 4.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  "assets/images/Video.svg",
                  width: 170,
                ),
              ),
              Container(
                height: 145.0,
                width: 145.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 4.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        1.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  "assets/images/Photo to text.svg",
                  width: 170,
                ),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: bottomNavigationBar,
    );
  }

  // Widget get bottomNavigationBar {
  //   return ClipRRect(
  //     borderRadius: const BorderRadius.only(
  //       topRight: Radius.circular(20),
  //       topLeft: Radius.circular(20),
  //     ),
  //     child: SizedBox(
  //       height: 80,
  //       child: BottomNavigationBar(
  //         currentIndex: _selectedIndex,
  //         onTap: _onItemTapped,
  //         backgroundColor: Color(0xFF064494),
  //         unselectedLabelStyle: TextStyle(color: Colors.white),
  //         selectedLabelStyle: TextStyle(fontSize: 1),
  //         items: <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(
  //             label: '',
  //             icon: InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   _onItemTapped(0);
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                         builder: (context) => const Home_Page()),
  //                   );
  //                 });
  //               },
  //               child: Container(
  //                 height: 60,
  //                 width: 85,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.rectangle,
  //                   color: _selectedIndex == 0
  //                       ? Colors.white30
  //                       : Colors.transparent,
  //                   borderRadius: BorderRadius.all(Radius.circular(10)),
  //                 ),
  //                 child: Column(
  //                   children: [
  //                     const Icon(
  //                       Icons.home,
  //                       size: 32,
  //                       color: Colors.white,
  //                     ),
  //                     Text(
  //                       "Home",
  //                       style: TextStyle(color: Colors.white),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //           BottomNavigationBarItem(
  //             label: '',
  //             icon: InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   _onItemTapped(1);
  //                   Navigator.push(
  //                     context,
  //                     MaterialPageRoute(
  //                         builder: (context) => const File_Page()),
  //                   );
  //                 });
  //               },
  //               child: Container(
  //                   height: 60,
  //                   width: 85,
  //                   decoration: BoxDecoration(
  //                     shape: BoxShape.rectangle,
  //                     color: _selectedIndex == 1
  //                         ? Colors.white30
  //                         : Colors.transparent,
  //                     borderRadius: BorderRadius.all(Radius.circular(10)),
  //                   ),
  //                   child: Column(
  //                     children: [
  //                       const Icon(
  //                         Icons.folder,
  //                         size: 32,
  //                         color: Colors.white,
  //                       ),
  //                       Text(
  //                         "Files",
  //                         style: TextStyle(color: Colors.white),
  //                       ),
  //                     ],
  //                   )),
  //             ),
  //           ),
  //           BottomNavigationBarItem(
  //             label: '',
  //             icon: InkWell(
  //               onTap: () {
  //                 setState(() {
  //                   _onItemTapped(2);
  //                 });
  //               },
  //               child: Container(
  //                 height: 60,
  //                 width: 85,
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.rectangle,
  //                   color: _selectedIndex == 2
  //                       ? Colors.white30
  //                       : Colors.transparent,
  //                   borderRadius: BorderRadius.all(Radius.circular(10)),
  //                 ),
  //                 child: Column(
  //                   children: [
  //                     const Icon(
  //                       Icons.menu,
  //                       size: 32,
  //                       color: Colors.white,
  //                     ),
  //                     Text(
  //                       "More",
  //                       style: TextStyle(color: Colors.white),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //         type: BottomNavigationBarType.fixed,
  //         iconSize: 40,
  //         elevation: 5,
  //         unselectedItemColor: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
}
