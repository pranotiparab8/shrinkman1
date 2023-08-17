import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_all_path_provider/flutter_all_path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp6 extends StatefulWidget {
  const MyApp6({Key? key}) : super(key: key);

  @override
  _MyApp6State createState() => _MyApp6State();
}

class _MyApp6State extends State<MyApp6> {
  List<StorageInfo> _storageInfo = [];
  bool _hasPermission = false;
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
    _checkPermissionStatus();
  }

  Future<void> _checkPermissionStatus() async {
    PermissionStatus status = await Permission.storage.status;
    setState(() {
      _hasPermission = status.isGranted;
    });
  }

  Future<void> requestPermission() async {
    PermissionStatus status = await Permission.storage.request();
    if (status.isGranted) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Permission Granted'),
            content: Text('You can now access memory card files.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else if (status.isDenied) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Permission Denied'),
            content: Text('You have denied storage permission.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else if (status.isPermanentlyDenied) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Permission Denied'),
            content: Text('You have permanently denied storage permission. '
                'Please go to app settings and grant the permission.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  openAppSettings();
                },
                child: Text('Open Settings'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // var status = Permission.storage.status;
    // hasPermission = status.isGranted;
    File file2 = File('/storage/ACE2-A3B0/FAREWELL/_MG_7760.JPG');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                if (!_hasPermission) {
                  requestPermission();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Permission already granted.')),
                  );
                }
              },
              child: Text('Request Permission'),
            ),
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
            if (_hasPermission)
              Expanded(
                child: ListView.builder(
                  itemCount: _storageInfo.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_storageInfo[index].rootDir),
                      //subtitle: Text(_storageInfo[index].availableGB),
                    );
                  },
                ),
              ),
            if (_hasPermission) ...{
              Image.file(file2, height: 100, width: 100),
            }
          ],
        ),
      ),
    );
  }
}
