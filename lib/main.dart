import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localiased_app/landing.dart';
import 'package:localiased_app/splash/XDsplashscreen.dart';

import 'onboarding.dart';



void main() => runApp(new MaterialApp(

  theme:
  ThemeData(primaryColor: Colors.blue, accentColor: Colors.yellowAccent),
  debugShowCheckedModeBanner: false,
  home: XDsplashscreen(),));




