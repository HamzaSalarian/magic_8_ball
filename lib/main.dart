import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Ask Me anything',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
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
  int newball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  newball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$newball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
