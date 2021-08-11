import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
    hello();
  }

  void hello() {
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 1"),
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal,
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 44,
              bottom: 20,
              left: 10,
              right: 0,
            ),
            child: Text(
              "Countervalueasdasdasdasdasdasdasdasdasdasdasdasda : $_counter",
            ),
          ),
          Container(
            height: 300,
            width: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 300,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 200,
            height: 300,
            color: Colors.amber,
          ),
          Container(
            width: 200,
            height: 300,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 300,
            color: Colors.purple,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.remove),
      ),
    );
  }
}
