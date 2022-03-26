import 'dart:async';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page5.dart';
import 'package:flutter_application_1/Page6.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typing test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Typing test app',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp6()),
                  );
                },
                child: Text('Enter into the game')),
          ],
        )));
  }
}
