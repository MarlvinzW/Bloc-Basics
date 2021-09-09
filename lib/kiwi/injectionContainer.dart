/*
    @author Marlvin Chihota
    Email marlvinchihota@gmail.com
    Created on 8/9/2021
*/

import 'package:bloc_app/services/LoggerService.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void initKiwi() {
  kiwi.KiwiContainer()
    ..registerFactory((c) => LoggerService())
  ;
}
