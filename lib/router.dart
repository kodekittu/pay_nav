import 'package:flutter/material.dart';
import 'home_page.dart';

const String splashScreenViewRoute = '/';
const String homeRoute = 'home';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name){
    case homeRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}