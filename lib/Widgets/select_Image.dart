import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_manager/photo_manager.dart';

import 'home_page.dart';

class Select_Image extends StatefulWidget {
  final AssetPathEntity album;

  Select_Image({required this.album});

  @override
  State<Select_Image> createState() => _Select_ImageState();
}

class _Select_ImageState extends State<Select_Image> {
  var size1;
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
                  "Select Image",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      body: FutureBuilder<List<AssetEntity>>(
        future: widget.album.getAssetListRange(start: 0, end: 1000),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error loading media items'),
              );
            }

            final List<AssetEntity> mediaItems = snapshot.data ?? [];

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: mediaItems.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildMediaTile(mediaItems[index]);
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        shape: CircleBorder(side: BorderSide(color: Colors.red)),
        onPressed: () {},
        child: Icon(Icons.camera_alt_outlined, color: Colors.white),
      ),
    );
  }

  Widget _buildMediaTile(AssetEntity asset) {
    return GridTile(
      footer: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 40,
          child: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text(
              "$size1",
              style: const TextStyle(
                  color: Colors.white70, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      child: FutureBuilder<Uint8List?>(
        future: asset.thumbnailDataWithSize(const ThumbnailSize(200, 200)),
        builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.data != null) {
            print(snapshot.data!.lengthInBytes);
            size1 = snapshot.data!.lengthInBytes;
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.memory(
                snapshot.data!,
                fit: BoxFit.cover,
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
