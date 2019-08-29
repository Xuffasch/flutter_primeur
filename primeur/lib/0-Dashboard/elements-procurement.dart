import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'styles-dashboard.dart';

enum Units {
  single,
  dozen,
  box,
  kg,
}

class ProcurementContent extends StatelessWidget {
  final String produce;
  final DateTime dueDate;
  final int quantity;
  final Units unit;

  const ProcurementContent({
    this.produce,
    this.dueDate,
    this.quantity,
    this.unit
  });

  String get dueDateFormatted => DateFormat("yyyy-MM-dd").format(dueDate);

  String get unitForm => unit == Units.single
                        ? 'single'
                        : unit == Units.dozen
                        ? 'dozen'
                        : unit == Units.box
                        ? 'box'
                        : unit == Units.kg
                        ? 'kg'
                        : 'unknown';

  @override 
  Widget build(BuildContext context) {
        return Container(
      // height: itemH,
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      padding: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration( 
        color: Colors.purple[100],
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
          Text(produce, style: DashboardSection.mainLabel),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              SizedBox(width: 8.0),
              Text("Livraison : ", style: DashboardSection.label),
              Expanded(
                child: Text(dueDateFormatted, style: DashboardSection.value),
              ),
              Text("Total : ", style: DashboardSection.label),
              Text(quantity.toString(), style: DashboardSection.value),
              SizedBox(width: 8.0,),
              Text("Unit : ", style: DashboardSection.label),
              Text(unitForm, style: DashboardSection.value)
            ],
          ),
        ],
      ),
    );
  }
}