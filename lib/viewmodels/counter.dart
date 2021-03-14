import 'package:covid19/viewmodels/state_listview.dart';
import 'package:flutter/foundation.dart';

class CountViewModel extends ChangeNotifier {
  String _value = 'Lagos';
  int _totalActiveCases;
  int _discharged;
  int _death;

  int get totalActiveCases => _totalActiveCases;
  int get discharged => _discharged;
  int get death => _death;

  void setTotalActiveCases(int value) {
    _totalActiveCases = value;
    notifyListeners();
  }

  void setDischarged(int value) {
    _discharged = value;
    notifyListeners();
  }

  void setDeath(int value) {
    _death = value;
    notifyListeners();
  }

  void initialCount() {
    for (var state in states) {
      if (_value == state.name) {
        _totalActiveCases = state.casesOnAdmission;
        _discharged = state.discharged;
        _death = state.death;
        break;
      }
    }

    notifyListeners();
  }
}
