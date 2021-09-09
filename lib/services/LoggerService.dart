/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 9/9/2021
*/

import 'package:logger/logger.dart';

class LoggerService{

  var logger = Logger();

  void request({required String text, required Object payload}){
    logger.i({'message' : text, 'data' : payload});
  }

  void payload({required Object payload}){
    logger.i({'data' : payload});
  }

}