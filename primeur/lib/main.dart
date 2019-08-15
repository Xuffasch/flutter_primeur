import 'package:flutter/material.dart';
import 'Dashboard/elements-client.dart';
import 'Dashboard/elements-order.dart';

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
          // Clients
          ClientBanner(title: 'Nouveaux clients'),
          ClientContent(name: "Client 1", address: "Address Client 1"),
          ClientContent(name: 'Client ABC', address: '5 rue des moutons 75011 Paris'),
          // Order
          OrderBanner(title: 'Dernières commandes'),
          OrderContent(clientName: 'Client 2', total: 560, 
                        livraison: DateTime.utc(2019, 09, 17, 7, 00)),
          OrderContent(clientName: 'Pizza Pesto', total: 1200, 
                        livraison: DateTime.utc(2019, 09, 20, 14, 00)),
        ],
      ),

        
    
    );
  }
}

