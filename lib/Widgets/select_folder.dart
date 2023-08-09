import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_manager/photo_manager.dart';

import 'home_page.dart';
import 'select_Image.dart';

class Select_Folder extends StatefulWidget {
  const Select_Folder({Key? key}) : super(key: key);

  @override
  State<Select_Folder> createState() => _Select_FolderState();
}

class _Select_FolderState extends State<Select_Folder> {
  List<AssetPathEntity> _filteredAlbums = [];

  @override
  void initState() {
    super.initState();
    _fetchAlbums();
  }

  _fetchAlbums() async {
    final PermissionState _ps = await PhotoManager.requestPermissionExtend();
    if (_ps.isAuth) {
      List<AssetPathEntity> albums =
          await PhotoManager.getAssetPathList(hasAll: true);

      setState(() {
        _filteredAlbums = albums;
        // .where((album) => desiredAlbumNames.contains(album.name))
        // .toList();
      });
    } else {
      // Handle permission failure
      // PhotoManager.openSetting();
    }
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
                  "Select Folder",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _filteredAlbums.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildAlbumTile(_filteredAlbums[index]);
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

  Widget _buildAlbumTile(AssetPathEntity album) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Select_Image(album: album),
          ),
        );
      },
      child: GridTile(
        child: FutureBuilder<Uint8List?>(
          future: _getCoverThumbnail(album),
          builder: (BuildContext context, AsyncSnapshot<Uint8List?> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.memory(
                  snapshot.data!,
                  fit: BoxFit.cover,
                ),
              );
            } else {
              return Container(); // Placeholder or loading indicator can be shown here
            }
          },
        ),
        footer: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 40,
            child: GridTileBar(
              backgroundColor: Colors.black45,
              title: Text(
                album.name,
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  style: TextStyle(
                      color: Colors.white30, fontWeight: FontWeight.bold),
                  album.assetCount.toString()),
            ),
          ),
        ),
      ),
    );
  }

  Future<Uint8List?> _getCoverThumbnail(AssetPathEntity album) async {
    List<AssetEntity> assets = await album.getAssetListRange(start: 0, end: 1);
    if (assets.isNotEmpty) {
      Uint8List? thumbData = await assets[0].thumbnailData;
      if (thumbData != null) {
        return Uint8List.fromList(thumbData);
      }
    }
    return null; // Return a placeholder image if no assets in the album or cover thumbnail is not available
  }
}
