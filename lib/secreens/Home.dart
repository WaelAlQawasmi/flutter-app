import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.book), onPressed: () {})
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.local_taxi),
          label: Text("let's GO"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              primary: Colors.yellow,
              onPrimary: Colors.black87,
              shape: StadiumBorder(),
              elevation: 15,
              side: BorderSide(width: 2.0, color: Colors.black87),
              shadowColor: Colors.yellow),
        ),
      ),
    );
  }
}
