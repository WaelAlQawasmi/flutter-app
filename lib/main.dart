import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "wael   k qapp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("wael K Q".toUpperCase()),
          backgroundColor: Colors.blueGrey,
        ),

        body: Center(
          child: Text.rich(TextSpan(text: "my", children: [
            TextSpan(
                text: "First",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "App",
                style: TextStyle(fontSize: 30.0, color: Colors.blue))
          ])),
        ),
      )));
}
