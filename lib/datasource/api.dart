import 'package:covid19/domain/state.dart';
import 'package:covid19/services/exceptions/fetch.dart';
import 'package:covid19/services/interfaces/Iapi.dart';
import 'package:dio/dio.dart';

class Api extends IApi {
  Dio dio = new Dio();
  String url = 'https://covidnigeria.herokuapp.com/api';

  @override
  Future<List<State>> fetchStatesData() async {
    try {
      final response = await dio.get(url);
      final data = response.data['data']['states'];
      final results = List<Map<String, dynamic>>.from(data);
      List<State> states = results.map((state) => State.fromJson(state)).toList(growable: false);

      return states;
    } on DioError catch (dioError) {
      throw FetchException.fromDioError(dioError);
    }
  }

  
}
