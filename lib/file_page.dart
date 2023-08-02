import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class File_Page extends StatefulWidget {
  const File_Page({Key? key}) : super(key: key);

  @override
  State<File_Page> createState() => _File_PageState();
}

class _File_PageState extends State<File_Page> {
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
            padding: const EdgeInsets.only(top: 8.0, right: 24),
            child: const Icon(Icons.help_outline, color: Colors.red, size: 24),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          child: Divider(height: 0.5, color: Color(0xffDDDDDD)),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Compressed Photos",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Croped Photos",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Resize Photos",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Target Size Photos",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Compressed Video",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Photo To Text",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            height: 50.0,
            width: 350.0,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, left: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Text(
                    "Compressed PDF",
                    style: TextStyle(
                        color: Color(0xFF064494), fontWeight: FontWeight.w500),
                  )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF064494),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
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
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
}
