import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle boardSectionTitle = TextStyle(
    color: Colors.teal,
    fontSize: 30,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle boardSectionContent = TextStyle(
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
}