import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundFile) {
    final player = AudioCache();
    player.play('note$soundFile.wav');
  }

  Expanded buildKey({int soundNum, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: keyColor,
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
              buildKey(soundNum: 1, keyColor: Colors.red),
              buildKey(soundNum: 2, keyColor: Colors.orange),
              buildKey(soundNum: 3, keyColor: Colors.yellow),
              buildKey(soundNum: 4, keyColor: Colors.green),
              buildKey(soundNum: 5, keyColor: Colors.teal),
              buildKey(soundNum: 6, keyColor: Colors.blue),
              buildKey(soundNum: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
