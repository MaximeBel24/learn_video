import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_video/model/datas.dart';
import 'package:learn_video/views/video_tile_view.dart';

import '../model/video.dart';

class ListController extends StatelessWidget {
  List<Video> videos = Datas().parseVideos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Flutter"),
        backgroundColor: Colors.blue.shade800,
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) => VideoTileView(video: videos[index])),
        itemCount: videos.length,
      ),
    );
  }
}