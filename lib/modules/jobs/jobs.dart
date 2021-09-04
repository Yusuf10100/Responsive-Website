import 'package:flutter/material.dart';

class Jobs extends StatelessWidget {
  TextEditingController jobController = TextEditingController();
  var forKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        backgroundColor: Color(0xff0f0c38),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "We are looking or a Flutter developer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Question 1', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 20,
                  ),
                  TextFormField(
                    controller: jobController,
                    decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Question 2', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 20,
                  ),
                  TextFormField(
                    controller: jobController,
                    decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Question 3', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 20,
                  ),
                  TextFormField(
                    controller: jobController,
                    decoration: InputDecoration(
                        labelText: 'Answer',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    textColor: Colors.white,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
