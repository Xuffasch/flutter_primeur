import 'package:flutter/material.dart';
import '../mainDrawer.dart';

class ProcurementListPage extends StatefulWidget {
  final String title;

  ProcurementListPage({Key key, this.title}) : super(key: key);
  
  @override
  _ProcurementListPageState createState() => _ProcurementListPageState();
}

class _ProcurementListPageState extends State<ProcurementListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(accountName: "Primeur", sourceScreen: 'Procurement',),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Procurement List Page - to be created",
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