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

class OrderContent extends StatelessWidget {
  final clientName;
  final total;

  const OrderContent({
    this.clientName,
    this.total
  });

  @override 
  Widget build(BuildContext context) {
    double deviceW = MediaQuery.of(context).size.width;
    // double itemH = deviceW / 10;

    return Container(
      // height: itemH,
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      padding: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration( 
        color: Colors.green[100],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1.0, color: Colors.blueGrey),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: new Offset(5.0, 5.0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(clientName, style: DashboardStyles.SectionContent),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Total :", style: DashboardStyles.SectionContent),
              Text(total.toString(), style: DashboardStyles.SectionContent)
            ],
          ),
        ],
      ),
    );
  }

}