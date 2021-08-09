import 'dart:convert';

import 'package:day_3/API_KEY.dart';
import 'package:day_3/model/NASA_APOD.dart';
import 'package:day_3/model/ResultView.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<NASAAPODModel> fetchData() async {
    final response = await http.get(
        Uri.parse('https://api.nasa.gov/planetary/apod?api_key=' + API_KEY));
    final data = NASAAPODModel.fromJson(jsonDecode(response.body));

    return data;

    // print(data.body);

    // NASAAPODModel nasaapodModel = NASAAPODModel.fromJson(jsonDecode(data.body));
    // print(nasaapodModel.date);
  }

  @override
  void initState() {
    super.initState();
    nasaData = fetchData();
  }

  late Future<NASAAPODModel> nasaData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NASA Astronomy"),
      ),
      body: FutureBuilder<NASAAPODModel>(
        future: nasaData,
        builder: (BuildContext context, AsyncSnapshot<NASAAPODModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            NASAAPODModel datamodel = snapshot.data!;
            return ResultView(datamodel: datamodel);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
