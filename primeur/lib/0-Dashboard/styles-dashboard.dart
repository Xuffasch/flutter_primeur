import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

const double titleSize = 28;
const double mainLabelSize = 20;
const double labelSize = 16;
const double contentSize = 16;

const FontWeight titleWeight = FontWeight.w800;
const FontWeight labelWeight = FontWeight.w600;
const FontWeight valueWeight = FontWeight.w400;

abstract class DashboardTitle {
  static const TextStyle client = TextStyle(
    color: Colors.teal,
    fontSize: titleSize,
    fontWeight: titleWeight,
  );

  static const TextStyle order = TextStyle(
    color: Colors.orange,
    fontSize: titleSize,
    fontWeight: titleWeight,
  );

  static const TextStyle procurement = TextStyle(
    color: Colors.purple,
    fontSize: titleSize,
    fontWeight: titleWeight,
  );
}

abstract class DashboardSection {
  // Standard version
  static const TextStyle mainLabel = TextStyle(
    color: Color(0xFF424242), /* grey[800] */
    fontSize: mainLabelSize,
    fontWeight: titleWeight,
  );

  static const TextStyle label = TextStyle(
    color: Color(0xFF424242), /* grey[800] */
    fontSize: labelSize,
    fontWeight: labelWeight,
  );

    static const TextStyle value = TextStyle(
    color: Color(0xFF757575), /* grey[600] */
    fontSize: contentSize,
    fontWeight: valueWeight,
  );

  // White version
  static const TextStyle mainLabelWhite = TextStyle(
    color: Colors.white, /* grey[800] */
    fontSize: mainLabelSize,
    fontWeight: titleWeight,
  );

  static const TextStyle labelWhite = TextStyle(
    color: Colors.white,
    fontSize: labelSize,
    fontWeight: labelWeight,
  );

  static const TextStyle valueWhite = TextStyle(
    color: Colors.white,
    fontSize: contentSize,
    fontWeight: valueWeight,
  );
}
