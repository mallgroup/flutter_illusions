import 'package:flutter/material.dart';

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
    Container square = Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    );

    Container circleCover = Container(
      width: 20,
      height: 20,
      color: Colors.white
    );

    Container squareCover = Container(
      width: 10,
      height: 10,
      color: Colors.white,
    );

    Widget largeSquare = Container(
      width: 119,
      height: 119,
      child: Stack(
        children: <Widget>[
          Positioned(top: 0, left: 0, child: square),
          Positioned(top: 0, right: 0, child: square),
          Positioned(bottom: 0, left: 0, child: square),
          Positioned(bottom: 0, right: 0, child: square),
          Positioned(top: 0, left: 0, child: squareCover),
          Positioned(top: 0, right: 0, child: squareCover),
          Positioned(bottom: 0, left: 0, child: squareCover),
          Positioned(bottom: 0, right: 0, child: squareCover),
          Positioned(bottom: 0, left: 0, child: squareCover),
          Positioned(left: 50, top: 50, child: circleCover),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              left: (MediaQuery.of(context).size.width / 2) - (119 * 3 / 2),
              top: (MediaQuery.of(context).size.height / 2) - (119 * 2),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 0,
                    left: 118, // -1 = padding
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 0,
                    left: 236, // +2 = padding
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 118,
                    left: 0, // +2 = padding
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 118,
                    left: 118,
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 118,
                    left: 236,
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 236,
                    left: 0, // +2 = padding
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 236,
                    left: 118,
                    child: largeSquare,
                  ),
                  Positioned(
                    top: 236,
                    left: 236,
                    child: largeSquare,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
