import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[Text("hello"), Text("world")],
          ),
          Expanded(
              child: Center(
            child: Image.asset('assets/space.jpg'),
          )),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blueGrey,
              child: Text("hello world"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.blue,
              child: Text("hello world"),
            ),
          )
        ],
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Text("hello world"),
      //     ElevatedButton(onPressed: () {}, child: Text("click me")),
      //     Container(
      //       color: Colors.amber,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text("inside container"),
      //     )
      //   ],
      // ),

      // Padding(
      //   padding: EdgeInsets.all(90.0),
      //   child: Text("hello"),
      // ),
      // Container(
      //   padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   color: Colors.grey[400],
      //   child: Text("hello"),
      // ),
      // Center(
      //     child: ElevatedButton.icon(
      //   onPressed: () {
      //     print("you clicked me");
      //   },
      //   icon: Icon(Icons.mail),
      //   label: Text("email me"),
      //   style: ButtonStyle(
      //       backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
      //       foregroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
      // )

      //     // child: Icon(
      //     //   Icons.airport_shuttle,
      //     //   color: Colors.lightBlue,
      //     //   size: 50.0,
      //     // ),
      //     //child: Image.asset('assets/space.jpg'),
      //     // child:
      //     // Text(
      //     //   "hello world",
      //     //   style: TextStyle(
      //     //       fontSize: 30,
      //     //       color: Colors.red,
      //     //       fontWeight: FontWeight.bold,
      //     //       letterSpacing: 2.0,
      //     //       fontFamily: 'BungeeSpice'),
      //     // ),
      //     ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Welcome to Javatpoint',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8.0,
        onPressed: () {
          print("clicked me");
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
