import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_Three_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

void main() {

  const HOME_ROUTE= '/';
  runApp(MaterialApp(
    initialRoute: '/',
    // home: HomeScreen(),
    routes: {
      HOME_ROUTE: (context)=>HomeScreen(),
      '/one' : (context)=>RouteOneScreen(),
      '/two' : (context)=>RouteTwoScreen(),
      '/three' : (context)=>RouteThreeScreen(),
    },
  ));
}