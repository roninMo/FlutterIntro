import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Identification Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Studio_Ghibli.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(height: 60.0, color: Colors.grey[800]),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Studio Ghibli',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1,
                fontSize: 22.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Genre',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '4',
              style: TextStyle (
              color: Colors.amberAccent[200],
                  letterSpacing: 1,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Email',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1,
              )
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Text(
                  'schwegmank@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(width: 10.0),
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}