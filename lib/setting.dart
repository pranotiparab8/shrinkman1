import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'FAQ1.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FAQ1()),
                    );
                  },
                  child: const Icon(Icons.help_outline,
                      color: Colors.red, size: 24)),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xFF064494))),
              child: Center(
                  child: Text("Space to Run Campaign",
                      style: TextStyle(
                          color: Color(0xFF064494),
                          fontWeight: FontWeight.w400))),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 50.0,
                width: 350.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF064494),
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19.0),
                      child: SvgPicture.asset(
                          "assets/images/akar-icons_crown.svg",
                          width: 23),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Text(
                        "Upgrade to Premium",
                        style: TextStyle(
                            color: Color(0xFFFEFEFE),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 125.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFFFEFEFE),
                      ),
                    )
                  ],
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
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Icon(
                        Icons.settings,
                        size: 25,
                        color: Color(0xFF064494),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Center(
                          child: Text(
                        "Settings",
                        style: TextStyle(
                            color: Color(0xFF064494),
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 205.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF064494),
                      ),
                    )
                  ],
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
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Color(0xFF064494),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Center(
                          child: Text(
                        "Rate us",
                        style: TextStyle(
                            color: Color(0xFF064494),
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 208.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF064494),
                      ),
                    )
                  ],
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
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Icon(
                        Icons.help_outline,
                        size: 25,
                        color: Color(0xFF064494),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Center(
                          child: Text(
                        "FAQ",
                        style: TextStyle(
                            color: Color(0xFF064494),
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 231.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF064494),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
