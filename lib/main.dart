import 'package:flutter/material.dart';
import 'package:trining/secreens/Home.dart';
import 'package:trining/secreens/cloumRows.dart';
import 'package:trining/secreens/dashboard.dart';
import 'package:trining/secreens/dinamicListview.dart';
import 'package:trining/secreens/img.dart';
import 'package:trining/secreens/listViow.dart';
import 'package:trining/secreens/random.dart';

void main() {
  runApp(Myapp());
}
  class Myapp extends StatelessWidget {
    const Myapp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      title: "wael   k qapp",
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home:listViow
        ());
    }
  }


