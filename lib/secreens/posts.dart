import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("enas tegram",style: TextStyle(fontFamily:'Freehand-Regular' ),

),
backgroundColor: Colors.black87,),
      body:
      
      Center(
        child:

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[ buildContainer(),buildContainer(),
        ],),
      ),
    );
  }

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
                    icon: Icon(
                      Icons.favorite_border_outlined,
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
