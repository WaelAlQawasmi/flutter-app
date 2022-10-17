import 'package:flutter/material.dart';

class DynaminListViow extends StatelessWidget {
  // const DynaminListViow({Key? key}) : super(key: key);

  List<String> riders = ["Ahmad", "wael", "yazan"];
  List<String> cars = ["OPEL", "FORD", "MAZDA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("Dynamic List view"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.book)),
        ],
        backgroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: riders.length,
            itemExtent: 78,
            scrollDirection: Axis.vertical,
            reverse: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(riders[index][0]),
                  ),
                  title: Text(riders[index]),
                  subtitle: Text(cars[index]),
                  trailing: Icon(Icons.info_outline),
                ),
              );
            }),
      ),
    );
  }
}
