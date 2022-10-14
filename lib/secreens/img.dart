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
          backgroundColor: Colors.blueGrey),
      body: Container(
        height: 400,
        width: 400,
        // padding: EdgeInsets.symmetric(),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.topCenter,
        constraints: BoxConstraints(minWidth: 500.0),
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(5),

                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqjWVvw0DUF2C-dcl080kglWbH6HhIyk3Vcg&usqp=CAU"))  ,
            shape: BoxShape.circle,
            color: Colors.blueGrey),

        child: Text("WAEL AL QAWASMI"
        ),
      ),
    );
  }
}
