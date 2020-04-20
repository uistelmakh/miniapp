import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('First screen'),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.yellow,
          onPressed: () {
            Navigator.pushNamed(context, '/secondscreen');
          },
          child: Text('Next screen'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'This menu',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Meni1"),
              onTap: () {
                Navigator.pushNamed(context, '/mainscreen');
              },
            ),
            ListTile(
              title: Text("Meni2"),
              onTap: () {
                Navigator.pushNamed(context, '/secondscreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
