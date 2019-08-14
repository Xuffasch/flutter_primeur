import 'package:flutter/material.dart';
import 'dashboardStyles.dart';

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
          Text(title, style: DashboardStyles.ClientTitle),
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
      color: Colors.grey[350],
      margin: EdgeInsets.all(4.0),
      padding: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 4),
          Text(
            name,
            style: DashboardStyles.SectionContent,
          ),
          SizedBox(height: 4),
          Text(
            address,
            style: DashboardStyles.SectionContent,
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
