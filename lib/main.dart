import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  // void playSound (int soundNumber ){
  //
  //
  //   Expanded(
  //     child: FlatButton(
  //         color: Colors.yellow,
  //         onPressed: (){
  //           // playSound(6);
  //           final player = AudioCache();
  //           player.play('note$soundNumber.wav');
  //
  //         }
  //
  //     ),
  //   );
  //
  // }

  void playSound (int soundNumber ){

    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildTheKey({int soundNumber, Color color } ){

 return   Expanded(

      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);

        },


      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                buildTheKey(soundNumber: 1, color: Colors.red),
                buildTheKey(soundNumber: 2, color: Colors.yellow),
                buildTheKey(soundNumber: 3, color: Colors.orange),
                buildTheKey(soundNumber: 4, color: Colors.deepPurple),
                buildTheKey(soundNumber: 5, color: Colors.blue),
                buildTheKey(soundNumber: 6, color: Colors.green),
                buildTheKey(soundNumber: 7, color: Colors.red),
                buildTheKey(soundNumber: 7, color: Colors.tealAccent),


              ],
            ),
          ),
        ),
      ),
    );
  }
}



















