import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void playSound(int num){
    final player = AudioPlayer();
    player.play(AssetSource('song$num.mp3'));
  }

  Widget buildNote({ required MaterialColor color,  required int n}){
    return Expanded(
      child: Container(
        color: color,
        child: InkWell(
          onTap: () async{
            playSound(n);
          },child: SizedBox(child:Container()),),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNote(color:Colors.red, n:1),
              buildNote(color:Colors.orange,n:2),
              buildNote(color:Colors.yellow,n:3),
              buildNote(color:Colors.green,n:4),
              buildNote(color:Colors.blue,n:5),
              buildNote(color:Colors.purple,n:6),
            ],
          ),
        ),
      ),
    );
  }
  }



