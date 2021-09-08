/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 8/9/2021
*/

import 'package:bloc_app/bloc/actions/counterEvent.dart';
import 'package:bloc_app/bloc/blocs/counterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterService {
  final CounterBloc context;

  const CounterService(this.context);

  void increment() {
    context.add(CounterEvent.increment);
  }

  void decrement() {
    context.add(CounterEvent.decrement);
  }
}
