import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded createKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Container(color: color),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          playSound(soundNumber);
        },
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
            children: [
              createKey(color: Colors.red, soundNumber: 1),
              createKey(color: Colors.orange, soundNumber: 2),
              createKey(color: Colors.yellow, soundNumber: 3),
              createKey(color: Colors.green, soundNumber: 4),
              createKey(color: Colors.teal, soundNumber: 5),
              createKey(color: Colors.blue, soundNumber: 6),
              createKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
