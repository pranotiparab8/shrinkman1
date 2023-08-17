import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_all_path_provider/flutter_all_path_provider.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  List<StorageInfo> _storageInfo = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    late List<StorageInfo> storageInfo;
    try {
      storageInfo = await FlutterAllPathProvider.getStorageInfo();
    } on PlatformException {
      return;
    }

    if (!mounted) return;

    setState(() {
      _storageInfo = storageInfo;
    });
  }

  @override
  Widget build(BuildContext context) {
    File file =
        File('${_storageInfo[0].rootDir}/DCIM/Camera/IMG_20230816_092225.jpg');
    File file1 = File('${_storageInfo[1].rootDir}/FAREWELL/_MG_7760.JPG');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Internal Storage root:\n ${(_storageInfo.isNotEmpty) ? _storageInfo[0].rootDir : "unavailable"}\n'),
            Text(
                'Internal Storage appFilesDir:\n ${(_storageInfo.isNotEmpty) ? _storageInfo[0].appFilesDir : "unavailable"}\n'),
            Text(
                'Internal Storage AvailableGB:\n ${(_storageInfo.isNotEmpty) ? _storageInfo[0].availableGB : "unavailable"}\n'),
            Text(
                'SD Card root: ${(_storageInfo.length > 1) ? _storageInfo[1].rootDir : "unavailable"}\n'),
            Text(
                'SD Card appFilesDir: ${(_storageInfo.length > 1) ? _storageInfo[1].appFilesDir : "unavailable"}\n'),
            Text(
                'SD Card AvailableGB:\n ${(_storageInfo.length > 1) ? _storageInfo[1].availableGB : "unavailable"}\n'),
            //Image.file(file),
            Image.file(file1),
          ],
        ),
      ),
    );
  }
}
