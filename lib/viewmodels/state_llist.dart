import 'package:covid19/datasource/api.dart';
import 'package:covid19/domain/state.dart';
import 'package:covid19/services/exceptions/fetch.dart';
import 'package:covid19/viewmodels/state.dart';
import 'package:dio/dio.dart';

class StatesViewModel {
  Api api = Api();
  List<State> _states = [];

  List<State> get states => _states;

  Future<List<State>> getStatesData() async {
    try {
      List<State> fetchedData = await api.fetchStatesData();
      _states = fetchedData.map((state) => StateViewModel(state: state)).cast<State>().toList();

      return fetchedData;
    } on DioError catch (dioError) {
      throw FetchException.fromDioError(dioError);
    }
  }
}
