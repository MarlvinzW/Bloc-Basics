/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 8/9/2021
*/

import 'package:bloc_app/bloc/actions/counterEvent.dart';
import 'package:bloc_app/bloc/blocs/counterBloc.dart';
import 'package:bloc_app/utils/constants.dart';
import 'package:bloc_app/widgets/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  @override
  Widget build(BuildContext context) {
    final counterBloc = CounterBloc(0);

    return Container(
        height: Get.height,
        width: Get.width,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                Constants.appTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Get.back()),
              backgroundColor: Constants.appColor,
            ),
            body: BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
              builder: (context, count) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(30),
                          child: AppText(text: count.toString())),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(15),
                                child: CounterButton(
                                    counterEvent: CounterEvent.decrement,
                                    context: counterBloc)),
                            Padding(
                                padding: EdgeInsets.all(15),
                                child: CounterButton(
                                    counterEvent: CounterEvent.increment,
                                    context: counterBloc)),
                          ])
                    ]);
              },
            )));
  }
}
