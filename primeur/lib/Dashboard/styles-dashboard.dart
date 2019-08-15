import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class DashboardStyles {
  static const TextStyle ClientTitle = TextStyle(
    color: Colors.teal,
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle OrderTitle = TextStyle(
    color: Colors.orange,
    fontSize: 28,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle SectionContent = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
}
