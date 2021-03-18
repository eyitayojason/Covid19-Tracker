import 'package:covid19/ui/pages/home/layouts/case_update_widget.dart';
import 'package:covid19/ui/pages/home/layouts/dropdown_container.dart';
import 'package:covid19/ui/pages/home/layouts/home_header.dart';
import 'package:covid19/ui/pages/home/layouts/virus_spread_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              DropDownContainer(),
              CaseUpdateWidget(),
              SpreadOfVirusWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
