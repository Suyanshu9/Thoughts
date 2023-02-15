import 'package:flutter/material.dart';
import 'package:thoughts/pages/apiTest.dart';
import 'package:thoughts/pages/incognito.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => IncoMode(),
      'apitest':(context) => apitest(),
    },
  ));
}

