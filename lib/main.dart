// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

int leftdicenumber = 1;
int rightdicenumber = 6;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
            child: FlatButton(
          child: Image.asset("images/dice$leftdicenumber.png"),
          onPressed: () {
            setState(() {
              leftdicenumber--;
            });
          },
        )),
        Expanded(
            child: FlatButton(
          child: Image.asset("images/dice$rightdicenumber.png"),
          onPressed: () {},
        )),
      ]),
    );
  }
}
