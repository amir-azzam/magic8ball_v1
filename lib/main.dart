import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: MagicBall(),
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int numberball = 1;
  void ChangeBall(){
    numberball = Random().nextInt(5) + 1 ;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          setState(() {
            ChangeBall();
          });
        },
        child: Center(
          child: Image.asset('images/ball$numberball.png'),
        ),
      ),
    );
  }
}