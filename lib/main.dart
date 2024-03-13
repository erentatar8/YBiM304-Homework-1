import 'package:flutter/material.dart';
import 'dart:math' as Math;

void main() => runApp(const BasicScreen());

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // Başlığı ortala
          backgroundColor: Colors.indigo,
          title: Text(
            'YBİM304 Ödev-1',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          iconTheme: IconThemeData(color: Colors.white),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.edit),
            ),
          ],
        ),
        body: Center(
          child: const ImmutableWidget(),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.lightBlue,
            child: const Center(
              child: Text(
                "Eren Tatar\n32884138210",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green, // Sadece color özelliğini kullanıyoruz
      foregroundDecoration: BoxDecoration(
        backgroundBlendMode: BlendMode.colorBurn,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xAA0d6123),
            Color(0x00000000),
            Color(0xAA0d6123),
          ],
        ),
      ),
      child: Center(
        child: Transform.rotate(
          angle: 180 / Math.pi, // Rotations are supplied in radians
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.purple,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.withAlpha(120),
                  spreadRadius: 4,
                  blurRadius: 15,
                  offset: Offset.fromDirection(1.0, 30),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.purple,
                padding: const EdgeInsets.all(40),
                child: _buildShinyCircle(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
