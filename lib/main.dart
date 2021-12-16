import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: const Text(
          "Game Pic",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
      body: const Imagepage(),
    ),
  ));
}

class Imagepage extends StatefulWidget {
  const Imagepage({Key? key}) : super(key: key);

  @override
  _ImagepageState createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  int leftImageNumber = 1;
  int rigtImageNumber = 2;

  void changenumber() {
    leftImageNumber = Random().nextInt(8) + 1;
    rigtImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rigtImageNumber
              ? "مبررروك قد نجحت"
              : "حاول مرة أخرى",
          style: const TextStyle(
            fontSize: 30.0,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changenumber();
                      });
                    },
                    child: Image.asset('images/image-$leftImageNumber.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changenumber();
                      });
                    },
                    child: Image.asset('images/image-$rigtImageNumber.png')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
