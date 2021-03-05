import 'package:clientes_app/pages/login_page.dart';
import 'package:clientes_app/pages/pricipal_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
      routes: {
        'login'     : (BuildContext context) => LoginPage(),
        'principal' : (BuildContext context) => PrincipalPage()
      },
    );
  }
}