import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Target_size extends StatelessWidget {
  const Target_size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.red, size: 24)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 24.0, right: 50),
          child: Center(
              child: SvgPicture.asset("assets/images/Shrinkman Logo.svg")),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Container(
              height: 48,
              width: double.infinity,
              color: Color(0xFF064494),
              child: Center(
                child: Text(
                  "Compression Setting",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 35),
            child: Container(
              height: 180.0,
              width: double.infinity,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 10),
                    child: Text("Resize",
                        style: GoogleFonts.lato(color: Color(0xFFD4001A))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 20),
                        child: Text("Original Dimension",
                            style: GoogleFonts.lato(color: Color(0xFF020100))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 12.0, left: 145, top: 20),
                        child: Text("4032 X 3024",
                            style: GoogleFonts.lato(color: Color(0xFF255BA1))),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 20),
                        child: Text("Resized Dimension",
                            style: GoogleFonts.lato(color: Color(0xFF020100))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 12.0, left: 130, top: 20),
                        child: Center(
                          child: Container(
                            height: 30.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                            child: Center(
                              child: Text(
                                "1280 X 1024",
                                style: TextStyle(
                                  color: Color(0xFF255BA1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //     style: ButtonStyle(
                        //         backgroundColor: MaterialStateProperty.all(
                        //             Color(0xFFFEFEFE)),
                        //         shape: MaterialStateProperty.all(
                        //             RoundedRectangleBorder(
                        //                 borderRadius:
                        //                     BorderRadius.circular(10)))),
                        //     onPressed: () {},
                        //     child: Text("4032 X 3024",
                        //         style: GoogleFonts.lato(
                        //             color: Color(0xFF255BA1)))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 25),
            child: Container(
              height: 300.0,
              width: double.infinity,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 10),
                    child: Text("File Options",
                        style: GoogleFonts.lato(color: Color(0xFFD4001A))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 10),
                    child: Text("Storage Path",
                        style: GoogleFonts.lato(color: Color(0xFF000000))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 10),
                        child: Center(
                          child: Container(
                            height: 30.0,
                            width: 270.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF255BA1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                            child: Center(
                              child: Text(
                                "Local dislk/ full path",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 10),
                          child: Center(
                            child: Container(
                              height: 30.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color(0xFFD4001A),
                              ),
                              child: Center(
                                child: Text(
                                  "Change",
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //     style: ButtonStyle(
                          //         backgroundColor: MaterialStateProperty.all(
                          //             Color(0xFFFEFEFE)),
                          //         shape: MaterialStateProperty.all(
                          //             RoundedRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(10)))),
                          //     onPressed: () {},
                          //     child: Text("4032 X 3024",
                          //         style: GoogleFonts.lato(
                          //             color: Color(0xFF255BA1)))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: Color(0xFF9F9F9F),
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text("Delete Original Photo"),
                      ),
                      SizedBox(width: 140),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {},
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.yellow,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey[350],
                      )
                    ],
                  ),
                  SizedBox(height: 2),
                  Divider(
                    color: Color(0xFF9F9F9F),
                    thickness: 0.5,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text("Result Photo Format",
                            style: GoogleFonts.lato(color: Color(0xFF020100))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, left: 140),
                        child: Center(
                          child: Container(
                            height: 30.0,
                            width: 80.0,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                            child: Center(
                              child: Text(
                                "Origin",
                                style: TextStyle(
                                  color: Color(0xFF255BA1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //     style: ButtonStyle(
                        //         backgroundColor: MaterialStateProperty.all(
                        //             Color(0xFFFEFEFE)),
                        //         shape: MaterialStateProperty.all(
                        //             RoundedRectangleBorder(
                        //                 borderRadius:
                        //                     BorderRadius.circular(10)))),
                        //     onPressed: () {},
                        //     child: Text("4032 X 3024",
                        //         style: GoogleFonts.lato(
                        //             color: Color(0xFF255BA1)))),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Divider(
                    color: Color(0xFF9F9F9F),
                    thickness: 0.5,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text("Skip Photos with the size",
                            style: GoogleFonts.lato(color: Color(0xFF020100))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, left: 90),
                        child: Center(
                          child: Container(
                            height: 30.0,
                            width: 100.0,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                            child: Center(
                              child: Text(
                                "Unlimited",
                                style: TextStyle(
                                  color: Color(0xFF255BA1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //     style: ButtonStyle(
                        //         backgroundColor: MaterialStateProperty.all(
                        //             Color(0xFFFEFEFE)),
                        //         shape: MaterialStateProperty.all(
                        //             RoundedRectangleBorder(
                        //                 borderRadius:
                        //                     BorderRadius.circular(10)))),
                        //     onPressed: () {},
                        //     child: Text("4032 X 3024",
                        //         style: GoogleFonts.lato(
                        //             color: Color(0xFF255BA1)))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
