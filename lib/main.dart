import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Widget buildKey({ Color color, int x}){
    return Expanded(
      child: FlatButton(
      color: color,
      child: null,
      onPressed: () {
        playSound(x);
      }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black, 
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, x: 1),
              buildKey(color: Colors.orange, x: 2),
              buildKey(color: Colors.yellow, x: 3),
              buildKey(color: Colors.lightGreen, x: 4),
              buildKey(color: Colors.green, x: 5),
              buildKey(color: Colors.blue, x: 6),
              buildKey(color: Colors.purple, x: 7),
          ]),
        ),
      ),
    );
  }
}
