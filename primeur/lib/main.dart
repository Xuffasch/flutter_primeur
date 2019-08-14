import 'package:flutter/material.dart';
import 'Dashboard/clientElements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Primeur demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu, 
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button pressed');
          },
        ),
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          // Clients Header
          ClientBanner(title: 'Nouveaux clients'),
          ClientContent(name: "Client 1", address: "Address Client 1"),
          ClientContent(name: 'Client ABC', address: '5 rue des moutons 75011 Paris')
        ],
      ),

        
    
    );
  }
}

