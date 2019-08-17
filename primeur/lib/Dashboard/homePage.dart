import 'package:flutter/material.dart';

import 'elements-client.dart';
import 'elements-order.dart';
import 'elements-procurement.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          // Procurement
          ProcurementBanner(title: 'Achats à faire'),
          ProcurementContent(produce: "Tomate", dueDate: DateTime.utc(2019,09,17), quantity: 5, unit: Units.kg),
          ProcurementContent(produce: "Poireau", dueDate: DateTime.utc(2019,09,20), quantity: 3, unit: Units.dozen),
          ProcurementContent(produce: 'Pomme', dueDate: DateTime.utc(2019,09,20), quantity: 4, unit: Units.box)
        ],
      ),

        
    
    );
  }
}