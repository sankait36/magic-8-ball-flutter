import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text(
          'Ask Me Anything!',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      body: EightBallAppWidget(),
    ),
  ));
}

class EightBallAppWidget extends StatefulWidget {
  @override
  _EightBallAppWidgetState createState() => _EightBallAppWidgetState();
}

class _EightBallAppWidgetState extends State<EightBallAppWidget> {
  int ballDecisionNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            padding: EdgeInsets.all(0),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image.asset('images/ball$ballDecisionNumber.png'),
            onPressed: () {
              setState(() {
                ballDecisionNumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
