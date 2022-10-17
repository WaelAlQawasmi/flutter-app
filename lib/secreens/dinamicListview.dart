import 'package:flutter/material.dart';

class DynaminListViow extends StatelessWidget {
  // const DynaminListViow({Key? key}) : super(key: key);

  List<String> riders = ["Ahmad", "wael", "yazan"];
  List<String> cars = ["OPEL", "FORD", "MAZDA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                currentAccountPicture: CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/47054275?v=4")),
                // otherAccountsPictures: [],
                accountName: Text("wael alqawasmi"),
                accountEmail: Text("WAEL@Y.COM")),
            ListTile(
              autofocus: true,
              leading: Icon(Icons.home),
              title: Text("Home"),
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("history"),
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onLongPress: () {},
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                "label",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("first ride"),
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text("last ride"),
              onLongPress: () {},
            ),
            Align(
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(" log out"),
                onLongPress: () {},

              ),
              alignment: Alignment.topCenter,
            ),
          ],

        ),
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
