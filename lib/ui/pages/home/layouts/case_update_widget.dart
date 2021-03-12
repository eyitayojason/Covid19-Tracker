import 'package:covid19/ui/constants.dart';
import 'package:flutter/material.dart';

class CaseUpdateWidget extends StatelessWidget {
  const CaseUpdateWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          _Header(),
          _CounterContainer(),
        ],
      ),
    );
  }
}

class _CounterContainer extends StatelessWidget {
  const _CounterContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 30,
              color: kShadowColor,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _Counter(
              color: Colors.orange,
              number: 1021,
              title: "Infected",
            ),
            _Counter(
              color: kDeathColor,
              number: 23,
              title: "Deaths",
            ),
            _Counter(
              color: Colors.green,
              number: 103,
              title: "Recovered",
            )
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "Case Update\n", style: kTitleTextStyle),
              TextSpan(
                text: "Newest update March 28",
                style: TextStyle(color: kTextLightColor),
              ),
            ]),
          ),
          Spacer(),
          Text(
            "See details",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class _Counter extends StatelessWidget {
  const _Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  final int number;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$number",
          style: TextStyle(fontSize: 40, color: color),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
