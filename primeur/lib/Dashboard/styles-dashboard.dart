import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class DashboardStyles {
  static const double titleSize = 28;
  static const double sectionLabelSize = 18;
  static const double sectionContentSize = 16;

  static const TextStyle ClientTitle = TextStyle(
    color: Colors.teal,
    fontSize: titleSize,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle OrderTitle = TextStyle(
    color: Colors.orange,
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle SectionLabel = TextStyle(
    fontSize: sectionLabelSize,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle SectionContent = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
}
