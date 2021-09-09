import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: MagicBall(),
    );
  }
}
class MagicBall extends StatefulWidget{
  MagicBall({Key? key}) : super(key: key);
  MagicBallState createState() => MagicBallState();
}
class MagicBallState extends State<MagicBall>{

  @override
  Widget build(BuildContext context) {
    var random = new Random();
    var value = random.nextInt(5);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything',
        style:
          Theme.of(context).textTheme.headline4,
        ),

      ),
      body: Center(

        child: InkWell(
          onTap: (){
            setState(() {

            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('images/ball${value + 1}.png'),
          ),
        ),
      ),
    );
  }
}