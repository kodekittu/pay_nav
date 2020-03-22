import 'package:flutter/material.dart';
import 'package:paynav/paymnt_page.dart';
import 'home_page.dart';
import 'list_view.dart';

const String splashScreenViewRoute = '/';
const String homeRoute = 'home';
const String paymntRoute = 'paymnt';
const String listRoute = 'list';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name){
    case homeRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case paymntRoute:
      return MaterialPageRoute(builder: (context) => PaymntPage());
    case paymntRoute:
      return MaterialPageRoute(builder: (context) => ListPage());
  }
}