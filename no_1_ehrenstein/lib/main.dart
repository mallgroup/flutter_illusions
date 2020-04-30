import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ehrenstein',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ehrenstein, no. 1'),
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
    List<Widget> circles = List();

    List<int>.generate(30, (i) => i + 3).forEach((int i) {
      circles.add(Container(
        width: (i * 12).toDouble(),
        height: (i * 12).toDouble(),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius:
                BorderRadius.all(Radius.circular((i * 12).toDouble()))),
      ));
    });

    var square = Transform.rotate(
      angle: -math.pi / 4,
      child: Container(
        width: 260,
        height: 260,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      ),
    );

    circles.add(square);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: circles,
          ),
        ));
  }
}
