import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 24),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.red, size: 24)),
        ),
        backgroundColor: const Color(0xFFFEFEFE),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20),
          child: SvgPicture.asset("assets/images/Shrinkman Logo.svg"),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(54.0),
          child: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xFF064494),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset("assets/images/bx_bx-camera.svg"),
              SizedBox(width: 10),
              const Text("Photos", style: TextStyle(color: Color(0xFFFEFEFE))),
            ]),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 64.0),
            child: Text("What would you prefer\nto do ?",
                style: TextStyle(
                    color: Color(0xFF064494),
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 50),
          Center(
            child: Container(
              height: 50.0,
              width: 358.0,
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
                padding: const EdgeInsets.only(top: 15, left: 48.0),
                child: Text(
                  "Compress",
                  style: TextStyle(
                      color: Color(0xFF064494), fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Container(
              height: 50.0,
              width: 358.0,
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
                padding: const EdgeInsets.only(top: 15, left: 48.0),
                child: Text(
                  "Resize",
                  style: TextStyle(
                      color: Color(0xFF064494), fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Container(
              height: 50.0,
              width: 358.0,
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
                padding: const EdgeInsets.only(top: 15, left: 48.0),
                child: Text(
                  "Crop",
                  style: TextStyle(
                      color: Color(0xFF064494), fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Container(
              height: 50.0,
              width: 358.0,
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
                padding: const EdgeInsets.only(top: 15, left: 48.0),
                child: Text(
                  "Target Size",
                  style: TextStyle(
                      color: Color(0xFF064494), fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
