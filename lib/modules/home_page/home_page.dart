import 'package:flutter/material.dart';
import 'package:icon_tech/modules/home_page/nav_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0c38),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
