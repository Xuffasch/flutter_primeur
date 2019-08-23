import "package:flutter/material.dart";

class CountTransition extends StatefulWidget {
  final int count;
  final TextStyle style;

  CountTransition({ 
    Key key, 
    this.count,
    this.style,
  }) : super(key: key);

  @override
  _CountTransitionState createState() => _CountTransitionState();
}

class _CountTransitionState extends State<CountTransition> {
  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        print("To implement - transition");
      },
      child: CircleAvatar(
        backgroundColor: widget.style.color,
        child: Text(
          "+" + widget.count.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}

class TitleBannerStack extends StatelessWidget {
  final String title;
  final int additionalUnit;
  final TextStyle style;

  TitleBannerStack({
    Key key,
    this.title,
    this.additionalUnit,
    this.style,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print("Navigate to Client List Page");
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      if (additionalUnit > 0)
                        CountTransition(count: additionalUnit, style: style)
                      else 
                        Container()
                    ],
                  )
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: style,
                )
              ],
            ),
          ],
      ),

    );
  }
}