/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/


import 'package:bloc_app/models/User.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'UserService.g.dart';

@RestApi(baseUrl: 'https://6139c2511fcce10017e78bfe.mockapi.io/api/v1/')
abstract class UserService  {

  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @GET("Users")
  Future<List<User>> getUsers();

}