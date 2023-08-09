import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class Done_crop extends StatelessWidget {
  const Done_crop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF064494),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 24),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.red, size: 24)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
              child: SvgPicture.asset("assets/images/Shrinkman Logo.svg")),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 16),
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text("Compression Done Successfully!!",
                  style: GoogleFonts.lato(color: Colors.white)),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: SvgPicture.asset("assets/images/Vector.svg"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 65.0),
                child: SvgPicture.asset("assets/images/Vector1.svg"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: SizedBox(
                    width: double.infinity,
                    height: 615,
                    child: SvgPicture.asset(
                      "assets/images/Union (1).svg",
                      fit: BoxFit.fill,
                    )),
              ),
              Center(
                  child: SvgPicture.asset(
                      "assets/images/icons8-check-circle 1.svg")),
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 160),
                child: Container(
                  height: 55,
                  width: 300,
                  color: Color(0xFF3566A6),
                  child: Center(
                      child: Text(
                    "Compression Report",
                    style: GoogleFonts.lato(color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF064494),
                    radius: 78,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFCDDAEA),
                      radius: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You Saved",
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Text("400.00 Mb",
                              style: GoogleFonts.lato(
                                  color: Color(0xFF064494),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFFFEFEFE),
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
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: ExpansionTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "File Name",
                                style: TextStyle(
                                    color: Color(0xFF064494),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 20),
                              Text("2.2Mb",
                                  style: TextStyle(
                                      color: Color(0xFF064494),
                                      fontWeight: FontWeight.w500)),
                              Icon(Icons.arrow_right_alt),
                              Text("300kb",
                                  style: TextStyle(
                                      color: Color(0xFF064494),
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          children: <Widget>[
                            ListTile(
                                title: Row(
                              children: [
                                Icon(Icons.delete, color: Color(0xFF064494)),
                                SizedBox(width: 15),
                                Icon(Icons.folder_open,
                                    color: Color(0xFF064494)),
                                SizedBox(width: 15),
                                Icon(Icons.share, color: Color(0xFF064494)),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
