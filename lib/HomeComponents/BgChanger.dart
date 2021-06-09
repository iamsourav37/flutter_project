import 'dart:math';

import 'package:flutter/material.dart';

class BgChanger extends StatefulWidget {
  const BgChanger({Key? key}) : super(key: key);

  @override
  _BgChangerState createState() => _BgChangerState();
}

class _BgChangerState extends State<BgChanger> {
  int first = 255;
  int second = 255;
  int third = 255;
  late Color generatedColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generatedColor = Color.fromRGBO(first, second, third, 1.0);
  }

  void changeBgColor() {
    first = Random().nextInt(255) + 1;
    second = Random().nextInt(255) + 1;
    third = Random().nextInt(255) + 1;
    setState(() {
      generatedColor = Color.fromRGBO(first, second, third, 1.0);
    });
  }

  void reloadDefault() {
    first = 255;
    second = 255;
    third = 255;
    setState(() {
      generatedColor = Color.fromRGBO(first, second, third, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          reloadDefault();
        },
        child: Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: Text("Bg Changer"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: generatedColor,
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              this.changeBgColor();
            },
            style: ElevatedButton.styleFrom(
              primary: generatedColor,
              elevation: 20,
            ),
            child: Text(
              "Change",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
