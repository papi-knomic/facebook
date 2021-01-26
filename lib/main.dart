

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
  ));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int likes = 0;
  int love = 0;
  int comments = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'facebook',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.live_tv,
                            color: Colors.red,
                          ),
                          label: Text('Go Live'),
                        ),
                      ),
                      Expanded(
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(Icons.photo_camera,
                            color: Colors.green,
                          ),
                          label: Text('Picture'),
                        ),
                      ),
                      Expanded(
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.purple,
                          ),
                          label: Text('Go Live'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 10.0,),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/1.jpg'),
                        radius: 20.0,
                      ),
                      SizedBox(width:10.0),
                      Text(
                        'Moses Samson posted a photo',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(width:10.0),
                      Text(
                        '5d',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(Icons.public),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: Text('Cute Me'),
                    ),
                    Image.asset(
                        'assets/1.jpg',
                      width: 600.0,
                      height: 300.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 0.0 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          Text(
                            '$comments Comments',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$likes Likes',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$love Hearts',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton.icon(
                            onPressed: () {
                              setState(() {
                                likes += 1;
                              });
                            },
                            icon: Icon(
                              Icons.thumb_up,
                              color: Colors.blue,
                            ),
                            label: Text('Like'),
                          ),
                        ),
                        Expanded(
                          child: FlatButton.icon(
                            onPressed: () {
                              setState(() {
                                love += 1;
                              });
                            },
                            icon: Icon(Icons.favorite,
                              color: Colors.pink,
                            ),
                            label: Text('Love'),
                          ),
                        ),
                        Expanded(
                          child: FlatButton.icon(
                            onPressed: () {
                              setState(() {
                                comments += 1;
                              });
                            },
                            icon: Icon(
                              Icons.add_comment,
                              color: Colors.grey,
                            ),
                            label: Text('Comment'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}


