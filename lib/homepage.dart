import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/one.png");
  AssetImage six = AssetImage("images/one.png");
  AssetImage diceImage;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rolldice() {
    int random = (1 + Random().nextInt(6));
    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceImage,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: ElevatedButton(
                    onPressed:rolldice,
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(color: Colors.white),
                        animationDuration: Duration(seconds: 20),
                        primary: Colors.teal),
                    child: Text("Roll the dice"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
