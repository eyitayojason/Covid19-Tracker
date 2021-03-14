import 'package:covid19/ui/pages/home/home.dart';
import 'package:covid19/viewmodels/counter.dart';
import 'package:covid19/viewmodels/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DropdownViewModel()),
          ChangeNotifierProvider(create: (context) => CountViewModel()),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
