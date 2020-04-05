import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {

  void playSound(int soundNum){
    final AudioCache player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({Color color , int soundNumer}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumer);
        }, child: null, 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color:Colors.white , soundNumer:1),
                buildKey(color:Colors.black , soundNumer:2),
                buildKey(color:Colors.white , soundNumer:3),
                buildKey(color:Colors.black , soundNumer:4),
                buildKey(color:Colors.white , soundNumer:5),
                buildKey(color:Colors.black , soundNumer:6),
                buildKey(color:Colors.white , soundNumer:7),
              ],
            ),
          ),
        ),
      ),
    );
}
}