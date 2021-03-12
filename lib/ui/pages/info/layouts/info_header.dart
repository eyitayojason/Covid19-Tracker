import 'package:covid19/ui/widgets/myHeader.dart';
import 'package:flutter/material.dart';

class InfoHeader extends StatelessWidget {
  const InfoHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Myheader(
      image: "assets/icons/coronadr.svg",
      textTop: "Get to know",
      textBottom: "about Covid-19",
    );
  }
}