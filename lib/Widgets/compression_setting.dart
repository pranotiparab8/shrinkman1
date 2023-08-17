import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class Compression_setting extends StatefulWidget {
  @override
  State<Compression_setting> createState() => _Compression_settingState();
}

const double width = 350.0;
const double height = 60.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;

class _Compression_settingState extends State<Compression_setting> {
  bool selected = false;
  double? xAlign;
  Color? loginColor;
  Color? signInColor;

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.red, size: 24)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Center(
              child: SvgPicture.asset("assets/images/Shrinkman Logo.svg")),
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
                child: const Icon(Icons.home, color: Colors.red, size: 24)),
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
                  "Compression Setting",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, right: 25),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Stack(
                children: [
                  AnimatedAlign(
                    alignment: Alignment(xAlign!, 0),
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      width: width * 0.5,
                      height: height,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        xAlign = loginAlign;
                        loginColor = selectedColor;
                        signInColor = normalColor;
                      });
                    },
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Container(
                        width: width * 0.5,
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: Text(
                          'By Default',
                          style: TextStyle(
                            color: loginColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        xAlign = signInAlign;
                        signInColor = selectedColor;
                        loginColor = normalColor;
                      });
                    },
                    child: Align(
                      alignment: Alignment(1, 0),
                      child: Container(
                        width: width * 0.5,
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: Text(
                          'Custom',
                          style: TextStyle(
                            color: signInColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
