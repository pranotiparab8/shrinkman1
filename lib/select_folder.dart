import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class Select_Folder extends StatelessWidget {
  const Select_Folder({Key? key}) : super(key: key);

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
              child: Icon(Icons.arrow_back, color: Colors.red, size: 24)),
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
                  "Select Folder",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.all(1),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.yellow,
              ),
            );
          }),
    );
  }
}
