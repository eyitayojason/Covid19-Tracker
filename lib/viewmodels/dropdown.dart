import 'package:covid19/datasource/api.dart';
import 'package:covid19/domain/state.dart';
import 'package:covid19/services/exceptions/fetch.dart';
import 'package:covid19/viewmodels/counter.dart';
import 'package:covid19/viewmodels/state.dart';
import 'package:covid19/viewmodels/state_listview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DropdownViewModel extends ChangeNotifier {
  String _value = 'Lagos';
  List<String> _names = [];

  String get value => _value;
  List<String> get names => _names;

  Future<List<String>> getStatesNames() async {
    try {
      Api api = Api();
      List<State> fetchedData = await api.fetchStatesData();
      states = fetchedData.map((state) => StateViewModel(state: state)).toList();
    } on DioError catch (dioError) {
      throw FetchException.fromDioError(dioError);
    }

    for (var state in states) {
      _names.add(state.name);
    }

    notifyListeners();
    return _names;
  }

  void onSelected(String value) {
    _value = value;

    CountViewModel _countViewModel = CountViewModel();
    _countViewModel.updateCount(value);

    notifyListeners();
  }
}
