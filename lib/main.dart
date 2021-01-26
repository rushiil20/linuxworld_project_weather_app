import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lw_project_app/screens/home.dart';
import 'package:lw_project_app/screens/login.dart';
import 'package:lw_project_app/screens/page.dart';
import 'package:lw_project_app/screens/reg.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(
    MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "page": (context) => MyPage(),
      },
    )
  );
}

