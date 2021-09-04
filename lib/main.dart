import 'package:flutter/material.dart';
import 'modules/home_page/home_page.dart';
import 'modules/home_page/nav_bar.dart';

void main() {
  runApp(MyApp()); //Myapp
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Tech Digital Solutions',
      theme: ThemeData(primarySwatch: Colors.blue,),
      color: Color(0xff0f0c38),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

