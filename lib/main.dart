import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('سنگ   کاغذ   قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                height: 200.0,
                image: AssetImage('images/$top.png'),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image(
                height: 200.0,
                image: AssetImage('images/$bottom.png'),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
