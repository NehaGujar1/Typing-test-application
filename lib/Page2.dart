import 'dart:async';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class MyApp2 extends StatelessWidget {
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
  static const maxseconds = 15;
  int seconds = maxseconds;
  Timer? timer;
  void starttimer() {
    // ignore: avoid_print
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() => seconds--);
      }
      if (seconds == 0) {
        //MyApp3();
        return;
      }
    });
  }

  int a = 0;
  @override
  /*Widget buildTime() {
    return Text(
      seconds.toString(),
      style: TextStyle(
        backgroundColor: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 80,
      ),
    );
  }*/

  /*Widget buildButtons(){
       return ButtonWidget(
         Text('Start timer'),
         onClicked(){
           starttimer();
         }
       );
    }*/
  String np = "This text is supposed to be copied";
  String result = " ";
  Widget Input() {
    if (a == 1) {
      return TextField(
        decoration: new InputDecoration(
          hintText: 'Type here',
          hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        onChanged: (String str) {
          setState(() {
            result = str;
          });
        },
      );
    } else
      return Text(' ');
  }

  int count = 0;
  int i = 0;
  String test1 = ' ';
  String Con1 = 'WPM: ';
  String WPM(String r2, String r1) {
    if (r2.isNotEmpty) {
      for (i = 0; i < r2.length; i++) {
        if (r1.codeUnitAt(i) == test1.codeUnitAt(0)) {
          count++;
        } else if (i == r2.length - 1) {
          if (r1.codeUnitAt(i) != test1.codeUnitAt(0)) {
            count++;
          }
        }
        //print(count);
      }
    }
    Con1 = Con1 + count.toString();
    return Con1;
  }

  int count2 = 0;
  String Errors(String e1, String e2) {
    for (i = 0; i < e2.length; i++) {
      if (e2.codeUnitAt(i) != e1.codeUnitAt(i)) {
        count2++;
      }
    }
    Con1 = 'Number of errors: ' + count2.toString();
    return Con1;
  }

  double k = 0;
  String Acccuracy(int a, int b) {
    k = a / b;
    k = 1 - k;
    k = k * 100;
    Con1 = 'Accuracy: ' + k.toString() + '%';
    return Con1;
  }

  Widget Ouutput1() {
    if (seconds == 0) {
      return Text(
        WPM(result, np),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      );
    } else
      return Text(' ');
  }

  Widget Ouutput2() {
    if (seconds == 0) {
      return Text(
        Errors(np, result),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      );
    } else
      return Text(' ');
  }

  Widget Output3() {
    if (seconds == 0) {
      return Text(
        Acccuracy(count2, result.length),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      );
    } else
      return Text(' ');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.indigo),
            onPressed: () {
              var push = Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // buildTime(),
            // const SizedBox(height: 80,)
            //buildButtons(),
            Text(
              seconds.toString(),
              style: TextStyle(fontSize: 80),
            ),
            ElevatedButton(
              onPressed: () {
                starttimer();
                //Input();
                a = 1;
              },
              child: Text('START',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30)),
            ),
            //buildButtons(),
            Input(),
            Text(
              np,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Ouutput1(),
            Ouutput2(),
            Output3(),
          ],
        ),
      ),
    );
  }
}
