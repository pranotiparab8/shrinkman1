import 'package:flutter/material.dart';

class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Expansion Tile'),
      ),
      body: Container(
        height: 50.0,
        width: 335.0,
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
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
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
                        Icon(Icons.folder_open, color: Color(0xFF064494)),
                        SizedBox(width: 15),
                        Icon(Icons.share, color: Color(0xFF064494)),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
