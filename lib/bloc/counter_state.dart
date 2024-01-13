abstract class CounterState {
  final int value;
  CounterState(this.value);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}

class CounterValue extends CounterState {
  CounterValue(int value) : super(value);
}
