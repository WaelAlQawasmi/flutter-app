import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumber extends StatelessWidget {
  const RandomNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("random"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Text(
            "THIS RANDOM ${randomNum()}",
            style: TextStyle(fontSize: 20.0),
          ),
        ));
  }

  int randomNum() {
    return Random().nextInt(10);
  }
}
