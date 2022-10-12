import 'package:flutter/material.dart';
import 'package:trining/secreens/dashboard.dart';

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
      home: Dashboard());
    }
  }


