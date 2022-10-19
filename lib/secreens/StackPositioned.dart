import 'package:flutter/material.dart';
class StackPositioned extends StatelessWidget {
  const StackPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.black87,
        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar:BottomAppBar(
        color: Colors.black87,
        shape: CircularNotchedRectangle(),

        child:
        IconTheme(
          data: IconThemeData(color: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

            ],
          ),
        ),
      ) ,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.black12,
              height: 600,
              width: 600,
            ),
            Positioned(
right: 50,
              child: Container(
                color: Colors.yellowAccent,
                height: 300,
                width: 100,
              ),
            ),
            Positioned(
              right: 149,
              child: Container(
                color: Colors.white,
                height: 300,
                width: 100,
              ),
            ),
            Positioned(
              right: 250,
              child: Container(
                color: Colors.pink,
                height:300,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
