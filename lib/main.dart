import 'dart:async';
import 'package:flutter_application_1/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page3.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  Widget Animatedtext() {
    return SizedBox(
        child: AnimatedTextKit(
      animatedTexts: [
        ScaleAnimatedText('Welcome to Typing test App!'),
      ],
      onTap: () {},
    ));
  }

  @override
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
            Animatedtext(),
            Text('Would you like to test your typing speed?'),
            ElevatedButton(
              onPressed: () {
                var push = Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp2()),
                );
                const AlertDialog(
                    semanticLabel: 'You are moving to the test page');
              },
              child: Text('Click here'),
            ),
            Text('Would you like to compete with your friends?'),
            ElevatedButton(
                onPressed: () {
                  var push = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp3()),
                  );
                },
                child: Text('Click here')),
            // buildGridview(),
          ],
        ),
        // backgroundColor:Colors.deepOrange,
      ),
    );
  }
}



/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 60;
  Timer? timer;
  void _incrementCounter() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setstate() => _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                onClicked();
              },
              child: Text('Timer'),
            ),
            const Text(
              'Hello hi bye'
              //onclicked
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            
            TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
          ],
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: 
        tooltip: 'Increment',
        child: const Text('Timer'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
void starttimer(){

}*/
    );

  }
}
    class _MainPageState extends State<MainPage>{
      @override
   
  
  Widget build(BuildContext context) {
    // TODO: implement build
    
  }
   Widget buildButtons(){
      return ButtonWidget(
            const Text('Start timer'),
            onClicked: () {},
      );
    }

  }*/
