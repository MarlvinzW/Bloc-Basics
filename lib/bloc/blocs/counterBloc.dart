/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 8/9/2021
*/

import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/actions/counterEvent.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event)  async* {
    switch(event){
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }

}