import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFFE5e5E5),
          ),
        ),
        child: Row(
          children: <Widget>[
            _MapImage(),
            SizedBox(width: 20),
            _DropDownWidget(),
          ],
        ),
      ),
    );
  }
}

class _MapImage extends StatelessWidget {
  const _MapImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/maps-and-flags.svg");
  }
}

class _DropDownWidget extends StatelessWidget {
  const _DropDownWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButton(
        value: "Nigeria",
        isExpanded: true,
        underline: SizedBox(),
        icon: Icon(Icons.arrow_drop_down),
        items: [
          "Nigeria",
          "United Kingdom",
          "United States",
          "China",
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          // select the value
        },
      ),
    );
  }
}
