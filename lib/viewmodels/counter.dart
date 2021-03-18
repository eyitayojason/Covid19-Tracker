import 'package:covid19/viewmodels/state_listview.dart';

class CountViewModel {
  int _totalActiveCases;
  int _discharged;
  int _death;

  int get totalActiveCases => _totalActiveCases;
  int get discharged => _discharged;
  int get death => _death;

  set setTotalActiveCases(int value) {
    _totalActiveCases = value;
  }

  set setDischarged(int value) {
    _discharged = value;
  }

  set setDeath(int value) {
    _death = value;
  }

  CountViewModel updateCount(String value) {
    CountViewModel count = CountViewModel();
    for (var state in states) {
      if (value == state.name) {
        count.setDeath = state.death;
        count.setDischarged = state.discharged;
        count.setTotalActiveCases = state.casesOnAdmission;

        break;
      }
    }
    return count;
  }
}
