import 'package:flutter/material.dart';

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(
  home: new HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  Future<String> getData() async {
    var response = await http.get(
      Uri.encodeFull("http://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json",
        // "key": "token",
      }
    );

    print(response.body);

    List data = jsonDecode(response.body);
    print(data[1]['title']);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: getData,
        ),
      ),
    );
  }
}