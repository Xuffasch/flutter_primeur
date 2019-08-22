import 'package:flutter/material.dart';

import '../1-Clients/client.dart';

import 'styles-dashboard.dart';
import '../1-Clients/clientDetailPage.dart';

void transition(BuildContext context, Client client) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (BuildContext context, _, __) {
        return ClientDetailPage(client: client);
      },
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      }, 
    )
  );
}

class ClientContentGesture extends StatelessWidget {
  final Client client;

  ClientContentGesture({
    this.client
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: () { transition(context, client); },
      child: Container(
        margin: EdgeInsets.all(4.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.teal[100],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 3.0,
            offset: new Offset(2.0, 3.0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 4),
          Text(
            client.business,
            style: DashboardSection.mainLabel,
          ),
          SizedBox(height: 4),
          Text(
            client.address,
            style: DashboardSection.value,
          ),
          SizedBox(height: 4),
        ],
      ),
      ),
    );
  }
}