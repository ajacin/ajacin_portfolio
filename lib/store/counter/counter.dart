import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store{
  @observable
  int value = 5;

  @action
  void incrementCounter(){
    value++;
  }


}