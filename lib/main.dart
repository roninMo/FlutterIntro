import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('intro app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello'),
              Text('Wrld'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: Text('First Column Element'),
          ),
          Container(
            padding: EdgeInsets.all(35.0),
            color: Colors.pink,
            child: Text('Second Column Element'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('Third Column Element'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { print('Button pressed!'); },
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
