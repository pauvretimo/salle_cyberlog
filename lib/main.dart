import 'package:flutter/material.dart';
import 'package:learn/Planner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App salles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

/// A Stateful widget that paints flutter logo using [CustomPaint] and [Path].
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Center(
            child: Stack(alignment: Alignment.topLeft, children: const [
          PlanPortrait(ratio: [16, 9])
        ]));
      } else {
        return Center(
            child: Stack(alignment: Alignment.topLeft, children: const [
          PlanLandscape(ratio: [16, 9])
        ]));
      }
    }));
  }
}
