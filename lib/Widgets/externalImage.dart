import 'dart:async';
import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';

class ExternalImage extends StatefulWidget {
  @override
  _ExternalImageState createState() => _ExternalImageState();
}

class _ExternalImageState extends State<ExternalImage> {
  List<String> _exPath = [];

  @override
  void initState() {
    super.initState();
    getPath();
    getPublicDirectoryPath();
    getPath1();
  }

  // Get storage directory paths
  // Like internal and external (SD card) storage path
  Future<void> getPath() async {
    List<String> paths;
    // getExternalStorageDirectories() will return list containing internal storage directory path
    // And external storage (SD card) directory path (if exists)
    paths = await ExternalPath.getExternalStorageDirectories();
    print(paths);

    setState(() {
      _exPath = paths; // [/storage/emulated/0, /storage/B3AE-4D28]
    });
  }

  Future<String> getPath1() async {
    List<String> paths;
    String path1;
    String path2;
    // getExternalStorageDirectories() will return list containing internal storage directory path
    // And external storage (SD card) directory path (if exists)
    paths = await ExternalPath.getExternalStorageDirectories();
    print(paths);
    //path2 = paths[0];
    path1 = paths[1];
    setState(() {
      _exPath = paths; // [/storage/emulated/0, /storage/B3AE-4D28]
    });
    return path1;
  }

  // To get public storage directory path like Downloads, Picture, Movie etc.
  // Use below code
  Future<void> getPublicDirectoryPath() async {
    String path;
    String path1 = _exPath[1];
    path = await ExternalPath.getExternalStoragePublicDirectory(
        ExternalPath.DIRECTORY_DOWNLOADS);

    setState(() {
      print(path); // /storage/emulated/0/Download
    });
  }

  @override
  Widget build(BuildContext context) {
    File file1 = File('storage/emulated/0/DCIM/Camera/IMG_20230816_092225');
    return Scaffold(
      appBar: AppBar(
        title: Text('Plugin example app'),
      ),
      body:
          //Image.file(file1),
          Center(
        child: FutureBuilder(
          future: getPath1(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Image.file(
                  //File('${snapshot.data}/DCIM/Camera/IMG_20230816_092225.jpg'));
                  File('${snapshot.data}/FAREWELL/_MG_7760.JPG'));
              //Text(snapshot.data);
            } else {
              return Text("Loading");
            }
          },
        ),
      ),
    );
  }
}
