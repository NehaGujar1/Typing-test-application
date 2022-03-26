import 'dart:async';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page4.dart';
import 'package:flutter_application_1/Page6.dart';

class MyApp5 extends StatelessWidget {
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
  int a = 0;
  String result2 = ' ';
  String daten = '';
  Widget printwid() {
    if (a == 1) {
      return Text(
        daten,
        //style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      );
    } else
      return Text(' ');
  }

  String Assigndate(String r1) {
    daten = r1 + DateTime.now().toString();
    return daten;
  }

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
            Text('Enter the name of the team'),
            TextFormField(
              decoration: new InputDecoration(
                hintText: 'Type here',
                //hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              onChanged: (String str) {
                setState(() {
                  result2 = str;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Assigndate(result2);
                  a = 1;
                },
                child: Text('Create')),
            printwid(),
            ElevatedButton(
                onPressed: () {
                  var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp6()),
                  );
                },
                child: Text('Next')),
          ],
        )));
  }
}
