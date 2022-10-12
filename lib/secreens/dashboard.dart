import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
