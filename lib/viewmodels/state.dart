import 'package:covid19/domain/state.dart';

class StateViewModel {
  State _state;

  StateViewModel({State state}) {
    this._state = state;
  }

  String get state => _state.name;
  String get sId => _state.sId;
  int get confirmedCases => _state.confirmedCases;
  int get casesOnAdmission => _state.casesOnAdmission;
  int get discharged => _state.discharged;
  int get death => _state.death;
}
