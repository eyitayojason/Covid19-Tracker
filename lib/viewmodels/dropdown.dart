import 'package:covid19/viewmodels/counter.dart';
import 'package:covid19/viewmodels/state_listview.dart';
import 'package:flutter/foundation.dart';

class DropdownViewModel extends ChangeNotifier {
  String _value = 'Lagos';
  List<String> _names = [];

  String get value => _value;
  List<String> get names => _names;

  void getStatesNames() {
    for (var state in states) {
      _names.add(state.name);
    }
  }

  void onSelected(String value) {
    _value = value;

    CountViewModel _countViewModel = CountViewModel();
    _countViewModel.updateCount(value);

    notifyListeners();
  }
}
