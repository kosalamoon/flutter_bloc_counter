import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_counter/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.INCREMENT:
        yield this.currentState + 1;
        break;
      case CounterEvent.DECREMENT:
        yield this.currentState - 1;
        break;
      case CounterEvent.RESET:
        yield this.initialState;
        break;
    }
  }

  void increment() {
    this.dispatch(CounterEvent.INCREMENT);
  }

  void decrement() {
    this.dispatch(CounterEvent.DECREMENT);
  }

  void reset() {
    this.dispatch(CounterEvent.RESET);
  }
}
