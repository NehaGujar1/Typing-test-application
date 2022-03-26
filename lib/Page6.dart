import 'dart:async';
//import 'dart:html';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:flutter_application_1/Page4.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class MyApp6 extends StatelessWidget {
// ignore: use_key_in_widget_constructors
//Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typing test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(
        title: 'Typing test app',
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {
  late TextEditingController _namecontroller1;
  late TextEditingController _namecontroller2;
  void initState() {
    super.initState();
    _namecontroller1 = TextEditingController();
    _namecontroller2 = TextEditingController();
  }

  String result3 = ' ';
  String result4 = ' ';

  Widget Display1() {
    return TextField(
      controller: _namecontroller1,
      decoration: new InputDecoration(
        hintText: 'Type here',
        //hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      onChanged: (String str) {
        setState(() {
          result3 = str;
        });
      },
    );
  }

  Widget Display2() {
    return TextField(
      controller: _namecontroller2,
      decoration: new InputDecoration(
        hintText: 'Type here',
        //hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      onChanged: (String str) {
        setState(() {
          result4 = str;
        });
      },
    );
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
            Text('Enter the name of player 1'),
            Display1(),
            ElevatedButton(
              onPressed: () {
                var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new MyHomePage23(
                          name1: _namecontroller1.text,
                        ));
                Navigator.of(context).push(route);
              },
              child: Text('Confirm'),
            ),
            /* Text('Enter the name of player 2'),
            Display2(),
            ElevatedButton(
                onPressed: () {
                  /*var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage23()),
                  );*/
                },
                child: Text('Next')),*/
          ],
        )));
  }
}

class MyHomePage23 extends StatefulWidget {
  final String name1;
  //final String name2;
  MyHomePage23({Key? key, required this.name1}) : super(key: key);

  @override
  State<MyHomePage23> createState() => _MyHomePageState4();
}

class _MyHomePageState4 extends State<MyHomePage23> {
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

  TextEditingValue accu = new TextEditingValue();
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
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.indigo),
            onPressed: () {
              var push = Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp3()),
              );
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.name1}"),
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
            ElevatedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new MyHomePage11(
                            title: 'Typing test app',
                            p: k,
                            namep1: widget.name1,
                          ));
                  Navigator.of(context).push(route);
                },
                child: Text('Player 2')),
          ],
        ),
      ),
    );
  }
}

class MyHomePage11 extends StatefulWidget {
  MyHomePage11(
      {Key? key, required this.title, required this.p, required this.namep1})
      : super(key: key);

  final String title;
  final double p;
  final String namep1;
  @override
  State<MyHomePage11> createState() => _MyHomePageState11();
  //static const p5 = p;
}

class _MyHomePageState11 extends State<MyHomePage11> {
  late TextEditingController _namecontroller1;
  late TextEditingController _namecontroller2;
  late TextEditingController p1;
  void initState() {
    super.initState();
    _namecontroller1 = TextEditingController();
    _namecontroller2 = TextEditingController();
    p1 = TextEditingController();
  }

  String result3 = ' ';
  String result4 = ' ';

  Widget Display1() {
    return TextField(
      controller: _namecontroller1,
      decoration: new InputDecoration(
        hintText: 'Type here',
        //hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      onChanged: (String str) {
        setState(() {
          result3 = str;
        });
      },
    );
  }

  Widget Display2() {
    return TextField(
      controller: _namecontroller2,
      decoration: new InputDecoration(
        hintText: 'Type here',
        //hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      onChanged: (String str) {
        setState(() {
          result4 = str;
        });
      },
    );
  }

  // double p4 = ;
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
            Text('Enter the name of player 2'),
            Display2(),
            ElevatedButton(
              onPressed: () {
                var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new MyHomePage24(
                          accu1: widget.p,
                          name2: _namecontroller2.text,
                          namepl1: widget.namep1,
                          //accu2: ,
                        ));
                Navigator.of(context).push(route);
              },
              child: Text('Confirm'),
            ),
            /* Text('Enter the name of player 2'),
            Display2(),
            ElevatedButton(
                onPressed: () {
                  /*var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage23()),
                  );*/
                },
                child: Text('Next')),*/
          ],
        )));
  }
}

class MyHomePage24 extends StatefulWidget {
  //final String name1;
  final double accu1;
  //final double accu2;
  final String name2;
  final String namepl1;
  MyHomePage24({
    Key? key,
    required this.name2,
    required this.accu1,
    required this.namepl1,
    //required this.accu2
  }) : super(key: key);

  @override
  State<MyHomePage24> createState() => _MyHomePageState10();
}

class _MyHomePageState10 extends State<MyHomePage24> {
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

  double k2 = 0;
  String Acccuracy(int a, int b) {
    k2 = a / b;
    k2 = 1 - k2;
    k2 = k2 * 100;
    Con1 = 'Accuracy: ' + k2.toString() + '%';
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
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.indigo),
            onPressed: () {
              var push = Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp3()),
              );
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.name2}"),
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
            ElevatedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new MyHomePage25(
                            accur1: widget.accu1,
                            nameplayer2: widget.name2,
                            nameplayer1: widget.namepl1,
                            accur2: k2,
                          ));
                  Navigator.of(context).push(route);
                },
                child: Text('END')),
          ],
        ),
      ),
    );
  }
}

class MyHomePage25 extends StatefulWidget {
  MyHomePage25(
      {Key? key,
      required this.accur1,
      required this.nameplayer1,
      required this.accur2,
      required this.nameplayer2})
      : super(key: key);

  final double accur1;
  final String nameplayer1;
  final double accur2;
  final String nameplayer2;
  @override
  State<MyHomePage25> createState() => _MyHomePageState25();
  //static const p5 = p;
}

class _MyHomePageState25 extends State<MyHomePage25> {
  late TextEditingController _namecontroller1;
  late TextEditingController _namecontroller2;
  late TextEditingController p1;
  void initState() {
    super.initState();
    _namecontroller1 = TextEditingController();
    _namecontroller2 = TextEditingController();
    p1 = TextEditingController();
  }

  // ignore: non_constant_identifier_names

  Widget build(BuildContext context) {
    String whowon = '';
    return Scaffold(
        appBar: AppBar(
          //title: Text(widget.nameplayer1),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('RESULTS'),
            // Display2(),
            ElevatedButton(
              onPressed: () {
                if (widget.accur1 > widget.accur2)
                  whowon = widget.nameplayer1;
                else
                  whowon = widget.nameplayer2;
                // Navigator.of(context).push(route);
              },
              child: Text(whowon),
            ),
            /* Text('Enter the name of player 2'),
            Display2(),
            ElevatedButton(
                onPressed: () {
                  /*var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage23()),
                  );*/
                },
                child: Text('Next')),*/
          ],
        )));
  }
}
