import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void playsound(int no){              
        final player = AudioCache();
        player.play('note$no.wav');
}

Expanded buildkey(Color color,int num){
   return Expanded(
        child: FlatButton(
            color: color,
            onPressed: (){
                playsound(num);
                }
                  , 
              ),
              
    );
}


class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               buildkey(Colors.red,1),
               buildkey(Colors.yellow,2),
               buildkey(Colors.green,3),
               buildkey(Colors.blue,4),
               buildkey(Colors.orange,5),
               buildkey(Colors.purple,6),
               buildkey(Colors.pink,7)

              ],
            ) ,
          
        ),
      ),
    );
  }
}
