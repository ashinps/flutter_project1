import 'package:flutter/material.dart';
import 'package:flutter_project1/examples/firstscreen.dart';
import 'package:flutter_project1/examples/secondscreen.dart';
import 'package:flutter_project1/examples/thirdscreen.dart';

const String firstPage = 'first';
const String secondPage = 'second';
const String thirdPage = 'third';


Route<dynamic>controller(RouteSettings settings){
  switch (settings.name){
    case firstPage:
      return MaterialPageRoute(builder: (context)=> FirstScreen());
    case secondPage:
      return MaterialPageRoute(builder: (context)=> SecondScreen());
    case thirdPage:
      return MaterialPageRoute(builder: (context)=> ThirdScreen());
    default:
      throw ('this route name does not exist');
  }
}