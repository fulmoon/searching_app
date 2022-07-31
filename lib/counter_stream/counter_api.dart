import 'dart:async';

class CounterApi{
  int _count = 0;

  final _countStreamController = StreamController<int>();

  Stream<int> get countStream => _countStreamController.stream;

  void increment(){
    _count++;
    _countStreamController.add(_count);
  }
}