import 'package:covid19/viewmodels/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

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
            _LocationIconImage(),
            SizedBox(width: 20),
            _DropDownWidget(),
          ],
        ),
      ),
    );
  }
}

class _LocationIconImage extends StatelessWidget {
  const _LocationIconImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/maps-and-flags.svg");
  }
}

class _DropDownWidget extends StatefulWidget {
  const _DropDownWidget({
    Key key,
  }) : super(key: key);

  @override
  __DropDownWidgetState createState() => __DropDownWidgetState();
}

class __DropDownWidgetState extends State<_DropDownWidget> {
  @override
  void initState() {
    super.initState();
    context.read<DropdownViewModel>().getStatesNames();
  }

  @override
  Widget build(BuildContext context) {
    var dropDownViewModel = context.watch<DropdownViewModel>();

    return Expanded(
      child: DropdownButton(
        value: dropDownViewModel.value,
        isExpanded: true,
        underline: SizedBox(),
        icon: Icon(Icons.arrow_drop_down),
        items: dropDownViewModel.names.map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
        onChanged: (value) {
          setState(() {
            dropDownViewModel.onSelected(value);
          });
        },
      ),
    );
  }
}
