import 'package:covid19/ui/constants.dart';
import 'package:flutter/material.dart';

class SymtomsWidget extends StatelessWidget {
  const SymtomsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Symptoms",
            style: kTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: _SymptopCard(
                  image: "assets/images/headache.png",
                  title: "Headache",
                  isActive: true,
                ),
              ),
              Expanded(
                child: _SymptopCard(
                  image: "assets/images/caugh.png",
                  title: "Cough",
                ),
              ),
              Expanded(
                child: _SymptopCard(
                  image: "assets/images/fever.png",
                  title: "Fever",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SymptopCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const _SymptopCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 90,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
