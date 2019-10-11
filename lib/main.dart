import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Magic 8 Ball"),
            backgroundColor: Colors.blue,
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int magicBallValue = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$magicBallValue.png'),
                onPressed: () {
                  print('The magic 8 ball!');
                  changeMagicBallValue();
                },
              )
          )
        ],
      ),
    );
  }

  void changeMagicBallValue() {
    setState(() {
      magicBallValue = Random().nextInt(5) + 1;
    });
  }
}
