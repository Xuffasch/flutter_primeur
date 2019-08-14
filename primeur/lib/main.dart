import 'package:flutter/material.dart';
import 'Dashboard/DashboardStyles.dart';

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
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(4.0),
            child: Column(
                children: <Widget>[
                  Text(
                    "Nouveaux Clients",
                    style: DashboardStyles.SectionTitle
                  ),
                ],
              ),
          ),
          // Clients Data
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              color: Colors.green[200],
              child: Column(
                children: <Widget>[
                  Text('new client 1', style: DashboardStyles.SectionContent,),
                  Text('new client 2', style: DashboardStyles.SectionContent,),
                ],
              ),
            ),
          ),
        ],
      ),

        
    
    );
  }
}

