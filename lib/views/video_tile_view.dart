import 'package:flutter/material.dart';
import 'package:learn_video/controller/player_controller.dart';

import '../model/video.dart';

class VideoTileView extends StatelessWidget {

  final Video video;
  const VideoTileView({Key? key, required this.video}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => tapAction(context)),
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
        height: MediaQuery.of(context).size.height / 3,
        child: Card(
            margin: const EdgeInsets.all(10),
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(video.thumbString),
                  Text(
                    video.title,
                    style: TextStyle(
                        color: Colors.blue.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  )
                ],
              ),
            )

        ),
      ),
    );
  }

  tapAction(BuildContext context) {
    final route = MaterialPageRoute(builder: (context) => PlayerController(video: video));
    Navigator.push(context, route);
  }
}