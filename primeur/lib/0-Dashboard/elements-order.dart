import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          Text(title, style: DashboardTitle.order),
        ],
      ),
    );
  }

}

class OrderContent extends StatelessWidget {
  final String clientName;
  final int total;
  final DateTime livraison;

  const OrderContent({
    this.clientName,
    this.total,
    this.livraison
  });

  String get livraisonDate => DateFormat("yyyy-MM-dd HH:mm").format(livraison);

  @override 
  Widget build(BuildContext context) {
    return Container(
      // height: itemH,
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      padding: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration( 
        color: Colors.orange[100],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        // border: Border.all(width: 1.0, color: Colors.blueGrey),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 2.0,
            offset: new Offset(2.0, 3.0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(clientName, style: DashboardSection.mainLabel),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              SizedBox(width: 8.0),
              Text("Livraison : ", style: DashboardSection.label),
              Expanded(
                child: Text(livraisonDate, style: DashboardSection.value),
              ),
              Text("Total : ", style: DashboardSection.label),
              Text(total.toString(), style: DashboardSection.value),
              SizedBox(width: 8.0,)
            ],
          ),
        ],
      ),
    );
  }

}