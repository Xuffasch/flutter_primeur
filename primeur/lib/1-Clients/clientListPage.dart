import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../server_url.dart';
import 'client.dart';

import '../mainDrawer.dart';
import '../0-Dashboard/elements-client_gestures.dart';

Future<List<Client>> fetchClients() async {
  var server = express_url + "/clients/all";
  final response = await http.get(server);

  return (json.decode(response.body)["result"] as List)
      .map((c) => Client.fromJSON(c))
      .toList();
}

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
      drawer: MainDrawer(accountName: 'Primeur', sourceScreen: 'Client'),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder<List<Client>>(
                future: fetchClients(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ClientContentGesture> clients = snapshot.data
                      .map((c) =>
                          ClientContentGesture(client: c))
                      .toList();
                  return ListView(
                    children: clients,
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    "Cannot fetch clients due to error :" +
                        snapshot.error.toString(),
                    textAlign: TextAlign.center,
                  );
                }

                return Center(
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(50)),
                      CircularProgressIndicator(),
                    ],
                  ),
                );
              }
            )
        ),
    );
  }
}
