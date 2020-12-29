import 'package:flutter/material.dart';
import 'package:responsive_app_basics/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter responsive basics',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: HomePage());
  }
}
