import 'package:covid19/ui/myApp.dart';
import 'package:covid19/viewmodels/state_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  try {
    StatesViewModel statesViewModel = StatesViewModel();
    await statesViewModel.getStatesData();

    runApp(MyApp());
  } catch (dioError) {
    runApp(_ErrorWidget(message: dioError));
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({
    Key key,
    @required this.message,
  }) : super(key: key);

  final message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: AlertDialog(
            title: Text('Error'),
            content: Text(message.toString()),
            actions: <Widget>[
              TextButton(
                child: Text('Exit'),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
