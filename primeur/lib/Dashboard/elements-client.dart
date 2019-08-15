import 'package:flutter/material.dart';
import 'styles-dashboard.dart';

// Display the Client section title
class ClientBanner extends StatelessWidget {
  final title;

  const ClientBanner({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(title, style: DashboardTitle.client),
        ],
      ),
    );
  }
}

// Displau the Client section content
class ClientContent extends StatelessWidget {
  final name;
  final address;

  const ClientContent({
    this.name,
    this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            name,
            style: DashboardSection.mainLabel,
          ),
          SizedBox(height: 4),
          Text(
            address,
            style: DashboardSection.value,
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
