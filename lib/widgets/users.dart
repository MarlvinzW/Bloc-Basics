/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:bloc_app/utils/constants.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;

  const UserItem(
      {Key? key,
      required this.id,
      required this.firstName,
      required this.lastName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Text(id,
            textAlign: TextAlign.center,
            style: TextStyle(color: Constants.appColor, fontSize: 30)),
        title: Text(lastName, style: TextStyle(color: Colors.black)),
        subtitle:
            Text(firstName, style: TextStyle(color: Colors.grey, fontSize: 10)),
      ),
    );
  }
}

class SectionDivider extends StatelessWidget {
  final double screenWidth;
  final Color color;

  const SectionDivider(
      {Key? key, required this.screenWidth, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 3, bottom: 3),
        child: Container(
            width: screenWidth,
            child: Center(
                child: Divider(
              color: color,
              thickness: 0.5,
            ))));
  }
}
