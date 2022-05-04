// ignore_for_file: prefer_const_constructors, unused_import

import 'package:errand360_ui/pages/confirm_password.dart';
import 'package:errand360_ui/pages/edit_job.dart';
import 'package:errand360_ui/pages/login_page.dart';
import 'package:errand360_ui/pages/search_page.dart';
import 'package:errand360_ui/pages/signup_page.dart';
import 'package:errand360_ui/pages/welcome_page.dart';
import 'package:errand360_ui/pages/view_profile.dart';
import 'package:errand360_ui/utils/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Errand360',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
