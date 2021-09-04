import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:icon_tech/modules/jobs/jobs.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return WebNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class WebNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("ICON TECH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Our Work",
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Jobs()),
                        );
                      },
                      child: Text(
                        "Jobs",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 600,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(fontSize: 40.0, color: Colors.white),
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText(
                    'mobile app programmers'.toUpperCase(),
                  ),
                  RotateAnimatedText(
                    'Icon Tech Digital Solutions'.toUpperCase(),
                  ),
                  RotateAnimatedText(
                    'Online digital solutions'.toUpperCase(),
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Container(
            child: Column(children: <Widget>[
              Text("ICON TECH",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Our Work",
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Jobs()),
                        );
                      },
                      child: Text(
                        "Jobs",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        Container(
          height: 600,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(fontSize: 40.0, color: Colors.white),
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText(
                    'mobile app programmers'.toUpperCase(),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  RotateAnimatedText(
                    'Icon Tech Digital Solutions'.toUpperCase(),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  RotateAnimatedText(
                    'Online digital solutions'.toUpperCase(),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
