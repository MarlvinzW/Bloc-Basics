/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:bloc_app/bloc/actions/homeEvent.dart';
import 'package:bloc_app/utils/constants.dart';
import 'package:bloc_app/widgets/counter.dart';
import 'package:bloc_app/widgets/home.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                Constants.appTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Constants.appColor,
            ),
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(30),
                  child: AppText(text: 'Choose option')),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: HomeButton(homeEvent: HomeEvent.counterScreen)),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: HomeButton(homeEvent: HomeEvent.userScreen)),
              ])
            ])));
  }
}
