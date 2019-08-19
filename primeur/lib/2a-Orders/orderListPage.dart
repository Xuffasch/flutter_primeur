import 'package:flutter/material.dart';
import '../mainDrawer.dart';

class OrderListPage extends StatefulWidget {
  final String title;

  OrderListPage({Key key, this.title}) : super(key: key);
  
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(accountName: "Primeur", sourceScreen: "Order",),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Order List Page - to be created",
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