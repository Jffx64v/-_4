import 'package:flutter/material.dart';

void main() => runApp(const BikeGameApp());

class BikeGameApp extends StatelessWidget {
  const BikeGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'لعبة الدراجة',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BikeGameHome(),
    );
  }
}

class BikeGameHome extends StatefulWidget {
  const BikeGameHome({Key? key}) : super(key: key);

  @override
  _BikeGameHomeState createState() => _BikeGameHomeState();
}

class _BikeGameHomeState extends State<BikeGameHome> {
  double _bikePosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لعبة الدراجة'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: Container(
                width: 300,
                height: 10,
                color: Colors.brown,
              ),
            ),
          ),
          Positioned(
            left: _bikePosition,
            bottom: 50,
            child: Icon(
              Icons.directions_bike,
              size: 50,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveBike,
        tooltip: 'تحرك',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }

  void _moveBike() {
    setState(() {
      _bikePosition += 20;
    });
  }
}