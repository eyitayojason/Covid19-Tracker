import 'package:covid19/domain/state.dart';

abstract class IApi {
  Future<List<State>> fetchStatesData();
}
