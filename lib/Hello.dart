import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<File> _images = [];

  @override
  void initState() {
    super.initState();
    requestStoragePermission();
  }

  void requestStoragePermission() async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      // Permission is granted. Proceed to load images.
    } else {
      // Permission is denied.
    }
  }

  Future<void> _loadGalleryImages() async {
    final picker = ImagePicker();
    PickedFile? pickedFile =
        (await picker.pickImage(source: ImageSource.gallery)) as PickedFile?;

    if (pickedFile != null) {
      setState(() {
        _images.add(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _loadGalleryImages,
              child: Text('Pick Images from Gallery'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Image.file(_images[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
