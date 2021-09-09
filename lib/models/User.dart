/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  String id;
  String firstName;
  String lastName;
  int phoneNumber;
  String address;

  User({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.address
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        phoneNumber: json['phoneNumber'],
        address: json['address']
    );
  }
}
