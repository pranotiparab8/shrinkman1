import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'faq_model.dart';
import 'home_page.dart';

class FAQ1 extends StatefulWidget {
  const FAQ1({Key? key}) : super(key: key);

  @override
  State<FAQ1> createState() => _FAQ1State();
}

class _FAQ1State extends State<FAQ1> {
  faq_model? faq;
  Future<String> _loadAddressAsset() async {
    return await rootBundle.loadString("assets/jsonFiles/faq.json");
  }

  Future loadAddress() async {
    String jsonAddress = await _loadAddressAsset();

    setState(() {
      final jsonResponse = json.decode(jsonAddress);
      faq = faq_model.fromJson(jsonResponse);
    });

    print(faq!.faq![0].answer);
  }

  @override
  void initState() {
    super.initState();
    loadAddress();
  }

  bool changeColor = true;
  bool ans = true;
  @override
  Widget build(BuildContext context) {
    setState(() {});
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
            padding: const EdgeInsets.only(top: 24.0),
            child: Center(child: SvgPicture.asset("assets/images/Logo.svg")),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, right: 16),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  child: Icon(Icons.home, color: Colors.red, size: 24)),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(64),
            child: Container(
                height: 48,
                width: double.infinity,
                color: Color(0xFF064494),
                child: Center(
                  child: Text(
                    "Frequently Asked Question",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
        ),
        body: (faq != null)
            ? ListView.builder(
                itemCount: faq!.faq?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 16.0, right: 24.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurStyle: BlurStyle.outer,
                            spreadRadius: 4,
                            blurRadius: 12,
                            offset: Offset(4, 8), // Shadow position
                          ),
                        ],
                      ),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Text(faq!.faq![index].question.toString(),
                              style: GoogleFonts.lato(
                                  color: Color(0xFF064494), fontSize: 15)),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                              child: Text(
                                faq!.faq![index].answer.toString(),
                                style: GoogleFonts.lato(
                                    color: Color(0xFF064494), fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
            : Center(child: CircularProgressIndicator())

        //     Column(
        //   children: [
        //     Expanded(
        //       child: SingleChildScrollView(
        //         scrollDirection: Axis.vertical,
        //         child: Column(
        //           children: [
        //             Container(
        //               height: ans ? 80 : 180,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 16),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(faq!.faq![0].question.toString()),
        //                         // ans
        //                         //     ? Text(faq!.faq![0].question
        //                         //         .toString()) //"What is Shrinkman optimization?"
        //                         //     : const Text(
        //                         //         "What is Shrinkman optimization?\n\n"
        //                         //         "Shrinkman Suite is an Image and PDF\n"
        //                         //         "optimization technology that reduces\n"
        //                         //         "the file size of images and PDF's up to\n"
        //                         //         "96% while preserving the resolution\n"
        //                         //         "and quality of the original file."),
        //                         // InkWell(
        //                         //   onTap: () {
        //                         //     setState(() {
        //                         //       ans = !ans;
        //                         //     });
        //                         //   },
        //                         //   child: Align(
        //                         //     alignment: Alignment.topRight,
        //                         //     child: Padding(
        //                         //       padding: ans
        //                         //           ? EdgeInsets.only(top: 20.0)
        //                         //           : EdgeInsets.only(top: 8.0),
        //                         //       child: Icon(
        //                         //         ans
        //                         //             ? Icons.arrow_forward_ios
        //                         //             : Icons.keyboard_arrow_down,
        //                         //         size: ans ? 15 : 22,
        //                         //       ),
        //                         //     ),
        //                         //   ),
        //                         // ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 70,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Color(0xFFFEFEFE), //
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "Why should I use Shrinkman \noptimization?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 100,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "How much can we downsize your files \n(Images, PDF & MS Office ) using \nShrinkman optimization?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 70,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "How can I optimize my files using \nShrinkman optimization?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 100,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "I've tried dragging a file onto the \nShrinkman icon, but nothing happens.\nAm I doing something wrong?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 70,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "Is Shrinkman optimization a new file\nformat ?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               height: 90,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(
        //                     left: 10.0, right: 10.0, top: 2),
        //                 child: Card(
        //                   elevation: 8,
        //                   shadowColor: Colors.grey[200],
        //                   color: Colors.white,
        //                   shape: ShapeBorder.lerp(RoundedRectangleBorder(),
        //                       RoundedRectangleBorder(), 500),
        //                   child: Padding(
        //                     padding:
        //                         const EdgeInsets.only(left: 16.0, right: 16.0),
        //                     child: Center(
        //                         child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                             "If I send an optimized file to someone, do\n"
        //                             "they need a copy of Shrinkman tool to\n"
        //                             "open it at their end?"),
        //                         Icon(
        //                           Icons.arrow_forward_ios,
        //                           size: 15,
        //                         )
        //                       ],
        //                     )),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SizedBox(
        //           height: 40,
        //           width: 40,
        //           child: ElevatedButton(
        //             style: ButtonStyle(
        //               backgroundColor: MaterialStateProperty.all(
        //                   changeColor ? Color(0xFF064494) : Color(0xFFFEFEFE)),
        //               shape: MaterialStateProperty.all(RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5))),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => const FAQ1()),
        //               );
        //               setState(() {});
        //               changeColor = !changeColor;
        //             },
        //             child: Align(
        //               alignment: Alignment.center,
        //               child: Text("1",
        //                   style: TextStyle(
        //                       color: changeColor
        //                           ? Color(0xFFFEFEFE)
        //                           : Color(0xFF064494))),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 20),
        //         SizedBox(
        //           height: 40,
        //           width: 40,
        //           child: ElevatedButton(
        //             style: ButtonStyle(
        //               shape: MaterialStateProperty.all(RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5))),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => const FAQ2()),
        //               );
        //             },
        //             child: const Text("2"),
        //           ),
        //         ),
        //         const SizedBox(width: 20),
        //         SizedBox(
        //           height: 40,
        //           width: 40,
        //           child: ElevatedButton(
        //             style: ButtonStyle(
        //               shape: MaterialStateProperty.all(RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5))),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => const FAQ3()),
        //               );
        //             },
        //             child: const Text("3"),
        //           ),
        //         )
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}
