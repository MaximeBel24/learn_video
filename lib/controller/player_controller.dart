import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_video/model/datas.dart';
import 'package:video_player/video_player.dart';

import '../model/video.dart';

class PlayerController extends StatefulWidget {

  final Video video;
  const PlayerController({Key? key, required this.video}): super(key: key);


  @override
  PlayerControllerState createState() => PlayerControllerState();
}

class PlayerControllerState extends State<PlayerController> {
  late Video _video;
  late VideoPlayerController _videoPlayerController;
  late int index;

  bool canMountVideoPlayer() => _videoPlayerController.value.isInitialized;
  bool isPlaying() => _videoPlayerController.value.isPlaying;
  int getIndex() => Datas().parseVideos().indexWhere((vid) => _video.urlVideo == vid.urlVideo);

  @override
  void initState() {
    super.initState();
    _video = widget.video;
    index = getIndex();
    configurePlayer();
  }

  @override
  void dispose() {
    deletePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.video.title),
        backgroundColor: Colors.red.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            canMountVideoPlayer()
                ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
                : Container(),
            Text(
              _video.title,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w400
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Card(
                elevation: 3,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: previous, icon: const Icon(Icons.skip_previous)),
                      IconButton(onPressed: playPause, icon: Icon(isPlaying() ? Icons.pause_circle : Icons.play_circle)),
                      IconButton(onPressed: next, icon: const Icon(Icons.skip_next)),
                    ],
                  ),
                ),
              ),
            ),
            VideoProgressIndicator(_videoPlayerController, allowScrubbing: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(_videoPlayerController.value.duration.inSeconds.toString() + "s"),
                Text(_videoPlayerController.value.position.inSeconds.toString() + "s")
              ],
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    final newVideo = Datas().parseVideos()[index];
                    return InkWell(
                      onTap: (() => tapAction(context)),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ClipRect(
                          child: Image.network(newVideo.thumbString,
                          fit: BoxFit.cover,
                            width: 140,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: Datas().parseVideos().length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }

  configurePlayer() {
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(_video.urlVideo));
    _videoPlayerController.initialize().then((isInit) => update());
    _videoPlayerController.setLooping(true);
    _videoPlayerController.addListener(() => update());
    _videoPlayerController.play;
  }

  deletePlayer() {
    _videoPlayerController.dispose();
  }

  update() {
    setState(() {

    });
  }

  playPause() {
    isPlaying()
        ? _videoPlayerController.pause()
        :_videoPlayerController.play();
    update();
  }

  next() {
    index = (index == Datas().parseVideos().length - 1) ? 0 : index + 1;
    _video = Datas().parseVideos()[index];
    configurePlayer();
  }

  previous() {
    index = (index == 0) ? Datas().parseVideos().length - 1 : index - 1;
    _video = Datas().parseVideos()[index];
    configurePlayer();
  }

  tapAction(BuildContext context) {
    final route = MaterialPageRoute(builder: (context) => PlayerController(video: Datas().parseVideos()[index]));
    Navigator.push(context, route);
  }
}