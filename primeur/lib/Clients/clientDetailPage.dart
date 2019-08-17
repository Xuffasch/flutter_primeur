import 'package:flutter/material.dart';

class ClientDetailPage extends StatefulWidget {
  final String title;

  ClientDetailPage({Key key, this.title}) : super(key: key);
  
  @override
  _ClientDetailPageState createState() => _ClientDetailPageState();
}

class _ClientDetailPageState extends State<ClientDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu, 
            semanticLabel: "menu",
          ),
          onPressed: () {
            print("Menu button from Client Detail Page ");
          },
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Client Detail Page - to be created",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.orange[500],
              fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
