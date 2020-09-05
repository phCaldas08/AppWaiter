import 'package:flutter/material.dart';
import 'package:waiter_app/screens/dashboard.dart';
import 'package:waiter_app/screens/detail_party.dart';
import 'package:waiter_app/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(fontFamily: "Quicksand"),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Login(),
        '/dashboard': (context) => Dashboad(),
        '/detalhe-festa': (context) => DetailParty(),
      },
      initialRoute: '/',
    );
  }
}
