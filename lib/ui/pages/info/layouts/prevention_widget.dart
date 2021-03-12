import 'package:covid19/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PreventionWidget extends StatelessWidget {
  const PreventionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Prevention",
            style: kTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          _PreventCard(
            image: "assets/images/wear_mask.png",
            title: "Wear face mask",
            text: "Since the start of the Coronavirus Pandemic, the world have fully embraced the wearing of facemasks",
          ),
          _PreventCard(
            image: "assets/images/wash_hands.png",
            title: "Wash your hands",
            text: "Since the start of the Coronavirus Pandemic, the world have fully embraced the wearing of facemasks",
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class _PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const _PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      text,
                      style: TextStyle(fontSize: 12),
                    ),
                    Align(alignment: Alignment.topRight, child: SvgPicture.asset("assets/icons/forward.svg"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
