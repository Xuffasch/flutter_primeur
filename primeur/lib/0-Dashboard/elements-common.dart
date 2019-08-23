import "package:flutter/material.dart";

class CommonTransition extends StatelessWidget {
  final Color color;
  
  CommonTransition({
    Key key, 
    this.color,
  }) : super(key: key);
  
  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        print("To implement - transition");
      },
      child: CircleAvatar(
        backgroundColor: color,
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
