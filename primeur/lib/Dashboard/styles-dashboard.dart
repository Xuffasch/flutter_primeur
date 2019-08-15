import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const double titleSize = 28;
const double mainLabelSize = 20;
const double labelSize = 16;
const double contentSize = 16;

abstract class DashboardTitle {
  static const TextStyle client = TextStyle(
    color: Colors.teal,
    fontSize: titleSize,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle order = TextStyle(
    color: Colors.orange,
    fontSize: titleSize,
    fontWeight: FontWeight.w800,
  );
}

abstract class DashboardSection {
  // Standard version
  static const TextStyle mainLabel = TextStyle(
    color: Color(0xFF424242), /* grey[800] */
    fontSize: mainLabelSize,
    fontWeight: FontWeight.w800
  );

  static const TextStyle label = TextStyle(
    color: Color(0xFF424242), /* grey[800] */
    fontSize: labelSize,
    fontWeight: FontWeight.w600
  );

    static const TextStyle value = TextStyle(
    color: Color(0xFF757575), /* grey[600] */
    fontSize: contentSize,
    fontWeight: FontWeight.w400
  );

  // White version
  static const TextStyle mainLabelWhite = TextStyle(
    color: Colors.white, /* grey[800] */
    fontSize: mainLabelSize,
    fontWeight: FontWeight.w800
  );

  static const TextStyle labelWhite = TextStyle(
    color: Colors.white,
    fontSize: labelSize,
    fontWeight: FontWeight.w600
  );

  static const TextStyle valueWhite = TextStyle(
    color: Colors.white,
    fontSize: contentSize,
    fontWeight: FontWeight.w400
  );
}
