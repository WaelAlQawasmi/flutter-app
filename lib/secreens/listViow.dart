import 'package:flutter/material.dart';

class listViow extends StatelessWidget {
  const listViow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List viow"),
        backgroundColor: Colors.black87,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.black87,
        child: IconTheme(
          data: IconThemeData(color:Colors.white),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                tooltip: 'Open navigation menu',
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView(
          padding: const EdgeInsets.only(top: 15),
          itemExtent: 78,
          scrollDirection: Axis.vertical,
          reverse: false,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: Icon(Icons.local_taxi),
              title: Text("first trip"),
              subtitle: Text("jordan- amman"),
              trailing: Icon(Icons.info_outline),
              onTap: () {},
              tileColor: Colors.black12,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(15)
              //   )
              // ),
            ),
            ListTile(
              leading: Icon(Icons.local_taxi),
              title: Text("secand trip"),
              subtitle: Text("jordan- Irbid"),
              trailing: Icon(Icons.info_outline),
              onTap: () {},
              tileColor: Colors.black12,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(
              //         Radius.circular(15)
              //     )
              // ),
            ),
            ListTile(
              leading: Icon(Icons.local_taxi),
              title: Text("3 rd trip"),
              subtitle: Text("jordan- ajlon"),
              trailing: Icon(Icons.info_outline),
              onTap: () {},
              tileColor: Colors.black12,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15))),
            )
          ],
        ),
      ),
    );
  }
}
