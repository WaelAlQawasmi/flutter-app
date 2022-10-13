import 'package:flutter/material.dart';

class img extends StatelessWidget {
  const img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "img",
          style: TextStyle(fontSize: 20),
        ),
          backgroundColor: Colors.blueGrey
      ),
      body: Image(image: AssetImage("img/prog.jpg"),
      width: 500,
      height: 500,
      fit: BoxFit.cover,),
    );
  }
}
