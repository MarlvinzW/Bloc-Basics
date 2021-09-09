/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:bloc_app/bloc/actions/homeEvent.dart';
import 'package:bloc_app/screens/counter.dart';
import 'package:bloc_app/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButton extends StatelessWidget {
  final HomeEvent homeEvent;

  const HomeButton({Key? key, required this.homeEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width * 0.2,
        height: Get.width * 0.1,
        child: RaisedButton(
            onPressed: () {
              switch (homeEvent) {
                case HomeEvent.counterScreen:
                  Get.to(() => Counter());
                  break;
                case HomeEvent.userScreen:
                  Get.to(() => Users());
                  break;
              }
            },
            color: homeEvent == HomeEvent.counterScreen
                ? Colors.green
                : Colors.blueAccent,
            child: Icon(
                homeEvent == HomeEvent.counterScreen
                    ? Icons.cached_outlined
                    : Icons.supervised_user_circle_sharp,
                color: Colors.white)));
  }
}
