import 'package:flutter/material.dart';

import '../1-Clients/client.dart';

class ClientDetailPage extends StatefulWidget {
  final Client client;

  ClientDetailPage({Key key, this.client}) : super(key: key);
  
  @override
  _ClientDetailPageState createState() => _ClientDetailPageState();
}

class _ClientDetailPageState extends State<ClientDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        title: Text(widget.client.business),
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
