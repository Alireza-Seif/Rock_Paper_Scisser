import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int top = 1;
  int bottom = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rock Paper Scisser'),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/images/$top.png'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: const Text('Start'),
              ),
              Image(
                image: AssetImage('assets/images/$bottom.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
