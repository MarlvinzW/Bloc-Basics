/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 8/9/2021
*/

import 'package:bloc_app/bloc/actions/counterEvent.dart';
import 'package:bloc_app/bloc/blocs/counterBloc.dart';
import 'package:bloc_app/services/counterService.dart';
import 'package:bloc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

// CounterService counterService = kiwi.KiwiContainer().resolve<CounterService>();

class CounterButton extends StatelessWidget {

  final CounterEvent counterEvent;
  final CounterBloc context;

  const CounterButton({Key? key, required this.counterEvent, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CounterService counterService = CounterService(this.context);

    return Container(
        width: Get.width * 0.2,
        height: Get.width * 0.1,
        child: RaisedButton(
          onPressed: () {
            switch (counterEvent) {
              case CounterEvent.increment:
                counterService.increment();
                break;
              case CounterEvent.decrement:
                counterService.decrement();
                break;
            }
          },
          color: counterEvent == CounterEvent.increment ? Colors.green : Colors.red,
          child: Icon(counterEvent == CounterEvent.increment ? Icons.add : Icons.minimize, color: Colors.white))
    );
  }
}

class CountText extends StatelessWidget {
  final String count;

  const CountText({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(count, textAlign: TextAlign.center,
        style: TextStyle(color: Constants.appColor, fontSize: 30, fontWeight: FontWeight.bold));
  }
}

