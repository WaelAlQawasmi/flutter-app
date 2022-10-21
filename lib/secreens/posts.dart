import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
   Posts({Key? key,required this.username}) : super(key: key);
String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:appbar(username:username) ,
appBar: AppBar(actions: [
  IconButton(onPressed: (){
    Navigator.pop(context);
  }, icon: Icon(Icons.logout))
],
  title: Text("enas tegram",style: TextStyle(fontFamily:'Freehand-Regular'
),

),
backgroundColor: Colors.black87,),
      body:postsViow());
  }


}


/// bar
class appbar  extends StatefulWidget {
   appbar ({Key? key , required this.username}) : super(key: key);
String username;
  @override
  State<appbar> createState() => _appbarState(username:username);
}

class _appbarState extends State<appbar> {
  String username;
  _appbarState ({ required this.username}) ;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout)),
          UserAccountsDrawerHeader(accountName: Text(username), accountEmail: Text("wael.alqawasmi@yahoo.com"))
        ],
      ),
    );
  }
}



//body


class postsViow extends StatefulWidget {
  const postsViow({Key? key}) : super(key: key);

  @override
  State<postsViow> createState() => _postsViowState();
}





class _postsViowState extends State<postsViow> {
  @override
  Widget build(BuildContext context) {
    return      Center(
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[ buildContainer(),buildContainer(),
          ],),
      );

  }
  bool liked= true;

  Container buildContainer() {
    return Container(

      alignment: Alignment.center,
      width: 320,
      height: 290,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              width: 300.0,
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ2WhgbiWor6wAgodn1rNlDMnw5u9LnXo3PQ&usqp=CAU"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.white),
                ),
                icon: liked?(Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black87,
                )):(Icon(
                  Icons.favorite,
                  color: Colors.black87,
                )),
                onPressed: () {
                setState(() {
                  liked=!liked;
                });
                },
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.white),
                ),
                icon: Icon(
                  Icons.comment_rounded,
                  color: Colors.black87,
                ),
                onPressed: () {},
              ),
              IconButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.white),
                ),
                icon: Icon(
                  Icons.share,
                  color: Colors.black87,
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

