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
      body: Center(child: homeAction()),
    );
  }
}

class homeAction extends StatefulWidget {
  const homeAction({Key? key}) : super(key: key);

  @override
  State<homeAction> createState() => _homeActionState();
}

class _homeActionState extends State<homeAction> {
  var password;
  bool? _CheckboxListTileValue;
  final _UsernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _UsernameController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
  alignment: Alignment.center,
  decoration: BoxDecoration(

    image:DecorationImage(
      fit: BoxFit.fill,
        image:
    NetworkImage("https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg")),
    color: Colors.white,
   border: Border.all(color: Colors.green,width: 5)
// border: Border.symmetric(vertical: BorderSide(color: Colors.black87,width: 2),horizontal: BorderSide(color: Colors.green,width: 5))
,
      // borderRadius: BorderRadius.circular(20)
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
  ),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: ListView(children: [
            TextFormField(

              controller: _UsernameController,
              decoration: InputDecoration(
                  labelText: "username",
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: Icon(Icons.password_rounded),
                border: OutlineInputBorder(),
              ),
            ),
            CheckboxListTile(

                tristate: true,
                title: Text("AGREE"),
                value: _CheckboxListTileValue,
                onChanged: (val) {
                  setState(() {
                    _CheckboxListTileValue = val;
                  });
                },
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.white

              ,
                )
            ,
            SizedBox(
              height: 40,
            ),
            SubmitButton(context),
            SizedBox(
              height: 40,
            ),
            Text(
                "you'r username is ${_UsernameController.text} and password is ${password}")
          ]),
        ));
  }

  ElevatedButton SubmitButton(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.local_taxi),
      label: Text("let's GO"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Posts(username: _UsernameController.text);
            },
          ),
        );
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
