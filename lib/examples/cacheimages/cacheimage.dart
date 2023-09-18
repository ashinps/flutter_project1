
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CacheImages extends StatefulWidget {
  const CacheImages({super.key});

  @override
  State<CacheImages> createState() => _CacheImagesState();
}

class _CacheImagesState extends State<CacheImages> {

  final String imageUrl = "https://4kwallpapers.com/images/wallpapers/windows-11-dark-mode-blue-stock-official-2732x2732-5630.jpg";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<File>(
        future: DefaultCacheManager().getSingleFile(imageUrl),
        builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if (snapshot.hasError){
            return Text('Error fetching image: ${snapshot.error}');
          }else{
            return Image.file(snapshot.data!);
          }
        },
      ),
    );
  }
}
