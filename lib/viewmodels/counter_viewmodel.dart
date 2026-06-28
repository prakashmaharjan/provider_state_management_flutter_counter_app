import 'package:flutter/material.dart';
import '../models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _counter = CounterModel(value: 0);

  CounterModel get counter => _counter;

  void increment() {
    _counter = _counter.copyWith(value: _counter.value + 1);
    notifyListeners();
  }

  void decrement() {
    if (_counter.value > 0){
  _counter = _counter.copyWith(value: _counter.value - 1);
    }
  
    notifyListeners();
  }

  void reset() {
    _counter = _counter.copyWith(value: 0);
    notifyListeners();
  }
}