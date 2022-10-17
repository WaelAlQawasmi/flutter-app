import 'package:flutter/material.dart';

class columRows extends StatelessWidget {
  const columRows({Key? key}) : super(key: key);

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
      body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
            // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiZ52IhOI3y1lVdi3zLeplo87pNIBQRo3Abw&usqp=CAU"),width: 150))
,
                Expanded(
                    flex: 4,
                    child: Image(
                        image: NetworkImage('https://th.bing.com/th/id/OIP.ztHHPeuDcW5UyWX5TN9yMQHaEn?w=268&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),width: 150,)),
                Expanded(
                    child: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.DPxUi52lnnwhLh2KUB3LnQHaGe?w=189&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7"),width: 150))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Expanded(child: Icon(Icons.phone) ),
                Expanded(
                    child:Icon(Icons.add_location_alt_outlined)),
                Expanded(child: Icon(Icons.money_outlined) ),
              ],
            ),

          ]),

    );
  }
}
