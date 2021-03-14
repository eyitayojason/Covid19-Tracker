import 'package:covid19/datasource/api.dart';
import 'package:covid19/domain/state.dart';
import 'package:covid19/services/exceptions/fetch.dart';
import 'package:covid19/viewmodels/state.dart';
import 'package:dio/dio.dart';

List<StateViewModel> states = [];

class StatesViewModel {
  Api api = Api();
  // List<StateViewModel> _states = [];

  // List<StateViewModel> get statesData => _states;

  Future<List<State>> getStatesData() async {
    List<State> fetchedData;
    try {
      fetchedData = await api.fetchStatesData();
      states = fetchedData.map((state) => StateViewModel(state: state)).toList();

      return fetchedData;
    } on DioError catch (dioError) {
      throw FetchException.fromDioError(dioError);
    }
  }
}
