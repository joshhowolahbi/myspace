import 'package:flutter/material.dart';
import 'package:myspace/main.dart';
import 'package:myspace/pages/myspace.dart';
import 'package:myspace/route_const.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => MyHomePage());
    case MySpaceRoute:
      return MaterialPageRoute(builder: (context) => MySpace());
    default:
      return MaterialPageRoute(builder: (context) => MyHomePage());
  }
}