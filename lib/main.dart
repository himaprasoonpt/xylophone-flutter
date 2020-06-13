import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

List<Widget> getChildren() {
  final children = <Widget>[];
  final color = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.greenAccent,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];
  for (var i = 1; i < 8; i++) {
    children.add(Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$i.wav');
        },
        color: color[i - 1],
      ),
    ));
  }
  return children;
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: getChildren(),
        )),
      ),
    );
  }
}
