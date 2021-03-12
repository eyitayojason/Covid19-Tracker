import 'package:covid19/ui/pages/info/layouts/info_header.dart';
import 'package:covid19/ui/pages/info/layouts/prevention_widget.dart';
import 'package:covid19/ui/pages/info/layouts/symptoms_widget.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InfoHeader(),
              SymtomsWidget(),
              PreventionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
