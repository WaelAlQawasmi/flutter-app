import 'package:flutter/material.dart';
class listViow extends StatelessWidget {
  const listViow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view"),
        leading: IconButton(icon:Icon( Icons.menu),onPressed: (){},),
        actions: [ IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.book), onPressed: () {})
        ],
        centerTitle: true,
        backgroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          )
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView(
          padding: const EdgeInsets.only(top: 15),

          itemExtent: 78,
          scrollDirection:Axis.vertical,
          reverse: false,
          shrinkWrap: true,
          children: [
            ListTile(

              leading: Icon(Icons.local_taxi),
              title: Text("first trip"),
              subtitle: Text("jordan- amman"),
              trailing: Icon(Icons.info_outline),
              onTap: (){},
              tileColor: Colors.black12,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(15)
              //   )
              // ),
            )
            ,
            ListTile(
              leading: Icon(Icons.local_taxi),
              title: Text("secand trip"),
              subtitle: Text("jordan- Irbid"),
              trailing: Icon(Icons.info_outline),
              onTap: (){},
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
              onTap: (){},
              tileColor: Colors.black12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15)
                  )
              ),
            )

          ],

        ),
      ),
    );
  }
}
