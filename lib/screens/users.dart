/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:bloc_app/models/User.dart';
import 'package:bloc_app/services/LoggerService.dart';
import 'package:bloc_app/services/UserService.dart';
import 'package:bloc_app/utils/constants.dart';
import 'package:bloc_app/widgets/users.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  LoggerService logger = kiwi.KiwiContainer().resolve<LoggerService>();
  late List<User> users = [];

  @override
  void initState() {
    final service = UserService(Dio());

    // todo : add exception handling

    service
        .getUsers()
        .then((data) => {
              setState(() {
                users = data;
              })
            })
        .then((value) =>
            logger.request(text: 'Users Fetched', payload: users.length));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Users List',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Get.back()),
              backgroundColor: Constants.appColor,
            ),
            body: users.isEmpty
                ? Container(
                    child: Center(
                        child: Text('Loading...',
                            style: TextStyle(color: Constants.appColor))))
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Column(children: [
                            UserItem(
                                id: users[index].id,
                                firstName: users[index].firstName,
                                lastName: users[index].lastName),
                            SectionDivider(
                                screenWidth: Get.width * 0.4,
                                color: Constants.appColor)
                          ]));
                    })));
  }
}
