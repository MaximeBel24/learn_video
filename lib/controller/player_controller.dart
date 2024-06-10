import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/video.dart';

class PlayerController extends StatefulWidget {

  final Video video;
  const PlayerController({Key? key, required this.video}): super(key: key);

  @override
  PlayerControllerState createState() => PlayerControllerState();
}

class PlayerControllerState extends State<PlayerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.video.title),
        backgroundColor: Colors.blue.shade800,
      ),
    );
  }
}