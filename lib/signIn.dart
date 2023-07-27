import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PrefixIconExampleApp extends StatelessWidget {
  const PrefixIconExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF064494),
        body: SignIn(),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Image(
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/Background.jpg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(80.0),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/Logo.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(120.0),
                child: Center(
                  child: SvgPicture.asset("assets/images/Shrinkman Icon.svg"),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 210.0),
              //   child: ClipPath(
              //     clipper: WaveClipperTwo(flip: false, reverse: true),
              //     child: Container(
              //       height: 120,
              //       color: Color(0xFF064494),
              //     ),
              //   ),
              // ),
            ],
          ),
          const Text(
            "Sign in",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Fastest Enterprise Image Capture & Compression Application",
              style: GoogleFonts.getFont('Lato',
                  color: Colors.white, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  prefixIcon: Icon(Icons.email, color: Colors.white, size: 24),
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 12),
                  labelText: "Email ID",
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  prefixIcon: Icon(Icons.key, color: Colors.white, size: 24),
                  labelStyle:
                      const TextStyle(color: Colors.white, fontSize: 12),
                  labelText: "Product Key",
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100.0),
            child: Text(
              "Avoid ‘ - ’ while entering product key",
              style: GoogleFonts.getFont('Lato', color: Colors.white),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 216,
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))),
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have product key?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Buy Product Key',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                        decorationColor: Colors.white),
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