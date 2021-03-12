import 'package:covid19/ui/widgets/myHeader.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Myheader(
      image: "assets/icons/Drcorona.svg",
      textTop: "All you need",
      textBottom: "is stay at home",
    );
  }
}