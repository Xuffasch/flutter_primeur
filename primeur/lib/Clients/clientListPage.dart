import 'package:flutter/material.dart';

class ClientListPage extends StatefulWidget {
  final String title;

  ClientListPage({Key key, this.title}) : super(key: key);
  
  @override
  _ClientListPageState createState() => _ClientListPageState();
}

class _ClientListPageState extends State<ClientListPage> {
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
            print('Menu button pressed from Client List Page');
          }
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Client List Page - to be created",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 42,
            )
          ),
        ),
      ),
    );

  }
}