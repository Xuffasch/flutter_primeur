import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class DashboardStyles {
  static const TextStyle SectionTitle = TextStyle(
    color: Colors.teal,
    fontSize: 30,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle SectionContent = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
}