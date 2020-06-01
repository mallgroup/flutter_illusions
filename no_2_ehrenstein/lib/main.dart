import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ehrenstein',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ehrenstein, no. 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int lineHeight = 150;

    Widget line = Container(
      height: (lineHeight * 2).toDouble(),
      width: 5,
      color: Colors.black,
    );

    Widget circle = Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            line,
            Transform.rotate(angle: pi, child: line),
            Transform.rotate(angle: pi / 2, child: line),
            Transform.rotate(angle: pi / 3, child: line),
            Transform.rotate(angle: pi / 6, child: line),
            Transform.rotate(angle: pi / -3, child: line),
            Transform.rotate(angle: pi / -6, child: line),
            circle
          ],
        ),
      ),
    );
  }
}
