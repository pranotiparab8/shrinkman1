import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Target_size extends StatefulWidget {
  const Target_size({Key? key}) : super(key: key);

  @override
  State<Target_size> createState() => _Target_sizeState();
}

class _Target_sizeState extends State<Target_size> {
  var photoFormat = "JPEG";
  var resize = "1280 X 1024";
  var skipPhotoSize = "Unlimited";
  bool colorch = false;
  List skipPhotoSizelist = [
    "Below 30K",
    "Below 50K",
    "Below 100K",
    "Below 500K",
    "Below 1000K",
    "Unlimited"
  ];
  List photoFormatlist = [
    "Origin",
    "JPEG",
    "PNG",
    "JPG",
  ];
  List resizelist = [
    "1280 X 1024",
    "1280 X 800",
    "1024 X 768",
    "800 X 600",
    "640 X 480",
    "320 X 240"
  ];

  onButtonClick(value) {
    resize = value;
  }

  onButtonClick1(value) {
    photoFormat = value;
  }

  onButtonClick3(value) {
    skipPhotoSize = value;
  }

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
                              child: InkWell(
                                onTap: () {
                                  buildShowModalBottomSheet(
                                      context,
                                      2000,
                                      "Select resized dimension",
                                      resizelist,
                                      "resize");
                                  // showModalBottomSheet<void>(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return SizedBox(
                                  //         height: 2000,
                                  //         width: double.infinity,
                                  //         child: Column(
                                  //           children: [
                                  //             Container(
                                  //               decoration: const BoxDecoration(
                                  //                 borderRadius:
                                  //                     BorderRadius.only(
                                  //                         topRight:
                                  //                             Radius.circular(
                                  //                                 13),
                                  //                         topLeft:
                                  //                             Radius.circular(
                                  //                                 13)),
                                  //                 color: Color(0xFF064494),
                                  //               ),
                                  //               height: 50,
                                  //               width: double.infinity,
                                  //               child: Padding(
                                  //                 padding:
                                  //                     const EdgeInsets.only(
                                  //                         top: 16.0,
                                  //                         left: 16.0),
                                  //                 child: Text(
                                  //                     "Select resized dimension",
                                  //                     style: TextStyle(
                                  //                       color: Colors.white,
                                  //                     )),
                                  //               ),
                                  //             ),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "1280 X 1024", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "1280 X 800", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "1024 X 768", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "800 X 600", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "640 X 480", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget(
                                  //                 "320 X 240", "resize"),
                                  //             const SizedBox(height: 10),
                                  //             ResizeWidget("Custom", "resize"),
                                  //           ],
                                  //         ),
                                  //       );
                                  //     });
                                },
                                child: Text(
                                  resize,
                                  style: TextStyle(
                                    color: Color(0xFF255BA1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                            child: InkWell(
                              onTap: () {
                                // showModalBottomSheet<void>(
                                //     context: context,
                                //     builder: (BuildContext context) {
                                //       return Container(
                                //         height: 350,
                                //         width: double.infinity,
                                //         child: Column(
                                //           children: [
                                //             Container(
                                //               decoration: const BoxDecoration(
                                //                 borderRadius: BorderRadius.only(
                                //                     topRight:
                                //                         Radius.circular(13),
                                //                     topLeft:
                                //                         Radius.circular(13)),
                                //                 color: Color(0xFF064494),
                                //               ),
                                //               height: 50,
                                //               width: double.infinity,
                                //               child: Padding(
                                //                 padding: const EdgeInsets.only(
                                //                     top: 16.0, left: 16.0),
                                //                 child:
                                //                     Text("Result Image Format",
                                //                         style: TextStyle(
                                //                           color: Colors.white,
                                //                         )),
                                //               ),
                                //             ),
                                //             SizedBox(height: 20),
                                //             ResizeWidget(
                                //                 "Origin", "photoFormat"),
                                //             //photoFormatM("Origin"),
                                //             SizedBox(height: 20),
                                //             ResizeWidget("JPEG", "photoFormat"),
                                //             //photoFormatM("JPEG"),
                                //             SizedBox(height: 20),
                                //             ResizeWidget("PNG", "photoFormat"),
                                //             //photoFormatM("PNG"),
                                //             SizedBox(height: 20),
                                //             ResizeWidget("JPG", "photoFormat"),
                                //
                                //             //photoFormatM("JPG"),
                                //           ],
                                //         ),
                                //       );
                                //     });
                                buildShowModalBottomSheet(
                                    context,
                                    350,
                                    "Result Image Format",
                                    photoFormatlist,
                                    "photoFormat");
                              },
                              child: Center(
                                child: Text(
                                  photoFormat,
                                  style: TextStyle(
                                    color: Color(0xFF255BA1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                              child: InkWell(
                                onTap: () {
                                  buildShowModalBottomSheet(
                                      context,
                                      2000,
                                      "Skip photos with the size",
                                      skipPhotoSizelist,
                                      "skipPhotoSize");
                                  // showModalBottomSheet<void>(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return Container(
                                  //         height: 2000,
                                  //         width: double.infinity,
                                  //         child: Column(
                                  //           children: [
                                  //             Container(
                                  //               decoration: const BoxDecoration(
                                  //                 borderRadius:
                                  //                 BorderRadius.only(
                                  //                     topRight:
                                  //                     Radius.circular(
                                  //                         13),
                                  //                     topLeft:
                                  //                     Radius.circular(
                                  //                         13)),
                                  //                 color: Color(0xFF064494),
                                  //               ),
                                  //               height: 50,
                                  //               width: double.infinity,
                                  //               child: Padding(
                                  //                 padding:
                                  //                 const EdgeInsets.only(
                                  //                     top: 16.0,
                                  //                     left: 16.0),
                                  //                 child: Text(
                                  //                     "Skip photos with the size",
                                  //                     style: TextStyle(
                                  //                       color: Colors.white,
                                  //                     )),
                                  //               ),
                                  //             ),
                                  //             SizedBox(height: 20),
                                  //             ResizeWidget(
                                  //                 "Below 30K", "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Below 30K"),
                                  //             SizedBox(height: 15),
                                  //             ResizeWidget(
                                  //                 "Below 50K", "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Below 50K"),
                                  //             SizedBox(height: 15),
                                  //             ResizeWidget("Below 100K",
                                  //                 "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Below 100K"),
                                  //             SizedBox(height: 15),
                                  //             ResizeWidget("Below 500K",
                                  //                 "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Below 500K"),
                                  //             SizedBox(height: 15),
                                  //             ResizeWidget("Below 1000K",
                                  //                 "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Below 1000K"),
                                  //             SizedBox(height: 15),
                                  //             ResizeWidget(
                                  //                 "Unlimited", "skipPhotoSize"),
                                  //             //skipPhotosWithSize("Unlimited"),
                                  //           ],
                                  //         ),
                                  //       );
                                  //     });
                                },
                                child: Text(
                                  skipPhotoSize,
                                  style: TextStyle(
                                    color: Color(0xFF255BA1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          color: Color(0xFFD4001A),
          height: 48,
          width: double.infinity,
          child: Center(
            child: Text(
              "Start Compressing",
              style: GoogleFonts.lato(color: Colors.white),
            ),
          )),
    );
  }

  Future<void> buildShowModalBottomSheet(BuildContext context, double height1,
      String text9, List list, String text8) {
    return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          // Container(
          //   height: height1,
          //   width: double.infinity,
          //   child: Column(
          //     children: [
          //       Container(
          //         decoration: const BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(13),
          //               topLeft: Radius.circular(13)),
          //           color: Color(0xFF064494),
          //         ),
          //         height: 50,
          //         width: double.infinity,
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          //           child: Text(text9,
          //               style: TextStyle(
          //                 color: Colors.white,
          //               )),
          //         ),
          //       ),
          //       SizedBox(height: 20),
          //       ResizeWidget("Below 30K", "skipPhotoSize"),
          //     ],
          //   ),
          // )
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(13),
                        topLeft: Radius.circular(13)),
                    color: Color(0xFF064494),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                    child: Text(text9,
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, position) {
                    return ResizeWidget(list[position], text8);
                  },
                ),
              ],
            ),
          );
          //   Container(
          //   height: height1,
          //   width: double.infinity,
          //   child: Column(
          //     children: [
          //       Container(
          //         decoration: const BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //               topRight: Radius.circular(13),
          //               topLeft: Radius.circular(13)),
          //           color: Color(0xFF064494),
          //         ),
          //         height: 50,
          //         width: double.infinity,
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 16.0, left: 16.0),
          //           child: Text("Skip photos with the size",
          //               style: TextStyle(
          //                 color: Colors.white,
          //               )),
          //         ),
          //       ),
          //       SizedBox(height: 20),
          //       ResizeWidget("Below 30K", "skipPhotoSize"),
          //       //skipPhotosWithSize("Below 30K"),
          //       SizedBox(height: 15),
          //       ResizeWidget("Below 50K", "skipPhotoSize"),
          //       //skipPhotosWithSize("Below 50K"),
          //       SizedBox(height: 15),
          //       ResizeWidget("Below 100K", "skipPhotoSize"),
          //       //skipPhotosWithSize("Below 100K"),
          //       SizedBox(height: 15),
          //       ResizeWidget("Below 500K", "skipPhotoSize"),
          //       //skipPhotosWithSize("Below 500K"),
          //       SizedBox(height: 15),
          //       ResizeWidget("Below 1000K", "skipPhotoSize"),
          //       //skipPhotosWithSize("Below 1000K"),
          //       SizedBox(height: 15),
          //       ResizeWidget("Unlimited", "skipPhotoSize"),
          //       //skipPhotosWithSize("Unlimited"),
          //     ],
          //   ),
          // );
        });
  }
  //
  // Center skipPhotosWithSize(String text) {
  //   var _selected = skipPhotoSize == text;
  //   return Center(
  //     child: InkWell(
  //       onTap: () {
  //         setState(() {
  //           onButtonClick3(text);
  //           Navigator.pop(context);
  //         });
  //       },
  //       child: Container(
  //         height: 50.0,
  //         width: 358.0,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.all(Radius.circular(10)),
  //           color: _selected ? Color(0xFF064494) : Color(0xFFffffff),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Color(0xffDDDDDD),
  //               blurRadius: 4.0, // soften the shadow
  //               spreadRadius: 1.0, //extend the shadow
  //               offset: Offset(
  //                 1.0, // Move to right 5  horizontally
  //                 1.0, // Move to bottom 5 Vertically
  //               ),
  //             )
  //           ],
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 15, left: 48.0),
  //           child: Text(
  //             text,
  //             style: TextStyle(
  //                 color: _selected ? Color(0xFFffffff) : Color(0xFF064494),
  //                 fontWeight: FontWeight.w500),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Center photoFormatM(String text) {
  //   var _selected = photoFormat == text;
  //   return Center(
  //     child: InkWell(
  //       onTap: () {
  //         setState(() {
  //           onButtonClick1(text);
  //           Navigator.pop(context);
  //         });
  //       },
  //       child: Container(
  //         height: 50.0,
  //         width: 358.0,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.all(Radius.circular(10)),
  //           color: _selected ? Color(0xFF064494) : Color(0xFFffffff),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Color(0xffDDDDDD),
  //               blurRadius: 4.0, // soften the shadow
  //               spreadRadius: 1.0, //extend the shadow
  //               offset: Offset(
  //                 1.0, // Move to right 5  horizontally
  //                 1.0, // Move to bottom 5 Vertically
  //               ),
  //             )
  //           ],
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 15, left: 48.0),
  //           child: Text(
  //             text,
  //             style: TextStyle(
  //                 color: _selected ? Color(0xFFffffff) : Color(0xFF064494),
  //                 fontWeight: FontWeight.w500),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget ResizeWidget(String text, String text5) {
    var _selected = resize == text;
    if (text5 == "resize") {
      _selected = resize == text;
    } else if (text5 == "photoFormat") {
      _selected = photoFormat == text;
    } else if (text5 == "skipPhotoSize") {
      _selected = skipPhotoSize == text;
    }

    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (text5 == "resize") {
                onButtonClick(text);
              } else if (text5 == "photoFormat") {
                onButtonClick1(text);
              } else if (text5 == "skipPhotoSize") {
                onButtonClick3(text);
              }

              Navigator.pop(context);
            });
          },
          child: Container(
            height: 45.0,
            width: 358.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: _selected ? Color(0xFF064494) : Color(0xFFffffff),
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
              padding: const EdgeInsets.only(top: 12, left: 48.0),
              child: Text(
                text,
                style: TextStyle(
                    color: _selected ? Color(0xFFffffff) : Color(0xFF064494),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
