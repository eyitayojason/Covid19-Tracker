import 'package:covid19/datasource/api.dart';
import 'package:covid19/myApp.dart';
import 'package:flutter/material.dart';

void main() {
  Api api = Api();
  api.fetchSummaryData();

  runApp(MyApp());
}
