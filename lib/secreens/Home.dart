import 'package:flutter/material.dart';
import 'package:trining/secreens/posts.dart';

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
      body: Center(child:homeAction()) ,
    );
  }
}
class homeAction extends StatefulWidget {
  const homeAction({Key? key}) : super(key: key);

  @override
  State<homeAction> createState() => _homeActionState();
}

class _homeActionState extends State<homeAction> {
  var username;
  final _passwordController= TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {setState(() {


    }); });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
        child: Center(
          child: ListView(children: [
            TextFormField(
              onChanged: (val){
                setState(() {
                  username=val;
                });
              },
              decoration: InputDecoration(
                labelText: "username",
                  prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder()

              ),
            ),
            SizedBox(height: 20,)
            ,
            TextFormField(
              controller:_passwordController ,
              decoration: InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(Icons.password_rounded),
                border:   OutlineInputBorder(),

              ),
              
            ),
          SizedBox(height: 40,),
          SubmitButton(context),
            SizedBox(height: 40,),
            Text("you'r username is ${username} and password is ${_passwordController.text}")
      ]),
        )

    );
  }




  ElevatedButton SubmitButton(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.local_taxi),
      label: Text("let's GO"),
      onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return Posts(username:_passwordController.text);
        },
        ), );
      },
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
    );
  }
}

