import 'package:flutter/material.dart';
import 'styles-dashboard.dart';

class OrderBanner extends StatelessWidget {
  final title;

  const OrderBanner({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(title, style: DashboardStyles.OrderTitle),
        ],
      ),
    );
  }

}