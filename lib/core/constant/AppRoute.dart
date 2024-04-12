import 'package:facrerec1/core/views/screens/EventScreen.dart';
import 'package:facrerec1/core/views/screens/HomeScreen.dart';
import 'package:facrerec1/core/views/screens/RegistrationScreen.dart';
import 'package:facrerec1/core/views/screens/choce.dart';
import 'package:facrerec1/core/views/screens/confirdScreen.dart';
import 'package:facrerec1/core/views/screens/detels.dart';
import 'package:facrerec1/core/views/screens/eventdetels.dart';
import 'package:facrerec1/core/views/screens/firstScreen.dart';
import 'package:facrerec1/core/views/screens/mayoScreen.dart';
import 'package:facrerec1/core/views/screens/mayorScreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  //  تسوي هاندل لكل الملفات اعامل كل صفحة على اساس انها رابط
  static const String firstScren = "/";
  static const String firstScrejj = "/h";
  static const String HomeScren = "/home";
  static const String RecognitionScren = "/reco";
  static const String RegistrationScren = "/reg";
  static const String DetelsScreenSt = "/detls";
  static const String ChoceScreend = "/Choce";
  static const String eventScreend = "/eve";
  static const String EventDetelsScree = "/EventD";
  static const String mayotelsScree = "/mayo";
  static const String mayotelscree = "/ms";
  static const String conscreenscree = "/con";

  static Route<dynamic> generteRouts(RouteSettings Rsettings) {
    switch (Rsettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => firstScreen(),
        );
      case "/h":
        return MaterialPageRoute(
          builder: (context) => firstScreen(),
        );
      case "/con":
        return MaterialPageRoute(
          builder: (context) => conscreen(),
        );
      case "/mayo":
        return MaterialPageRoute(
          builder: (context) => mayorScren(),
        );
      case "/ms":
        return MaterialPageRoute(
          builder: (context) => mayoScreen(),
        );
      case "/EventD":
        return MaterialPageRoute(
          builder: (context) => EventDetelsScreen(),
        );
      case "/eve":
        return MaterialPageRoute(
          builder: (context) => EventScreen(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case "/detls":
        return MaterialPageRoute(
          builder: (context) => DetelsScreen(),
        );

      case "/reg":
        return MaterialPageRoute(
          builder: (context) => RegistrationScreen(),
        );
      case "/Choce":
        return MaterialPageRoute(
          builder: (context) => ChoceScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }
}
