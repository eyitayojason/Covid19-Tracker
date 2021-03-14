import 'package:covid19/ui/pages/home/layouts/case_update_widget.dart';
import 'package:covid19/ui/pages/home/layouts/dropdown_container.dart';
import 'package:covid19/ui/pages/home/layouts/home_header.dart';
import 'package:covid19/ui/pages/home/layouts/virus_spread_widget.dart';
import 'package:covid19/viewmodels/counter.dart';
import 'package:covid19/viewmodels/state_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    StatesViewModel statesViewModel = StatesViewModel();
    statesViewModel.getStatesData();
    CountViewModel countViewModel = CountViewModel();
    countViewModel.initialCount();
  }

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
