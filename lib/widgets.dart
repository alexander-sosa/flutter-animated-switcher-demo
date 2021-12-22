import 'package:flutter/material.dart';

class Square extends StatelessWidget{

  Color mainColor;
  Square(this.mainColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: mainColor,

    );
  }

}

class Square1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,

    );
  }

}

class Square2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.yellow,

    );
  }

}

class Square3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,

    );
  }

}

class Square4 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,

    );
  }

}

class Square5 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.indigo,

    );
  }

}