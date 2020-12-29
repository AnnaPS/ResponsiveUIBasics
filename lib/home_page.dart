import 'package:flutter/material.dart';
import 'package:responsive_app_basics/responsive_one.dart';
import 'package:responsive_app_basics/responsive_two.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResponsiveOnePage()));
            },
            color: Colors.purple,
            child: Text('Responsive One'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResponsiveTwoPage()));
            },
            color: Colors.purple,
            child: Text('Responsive Two'),
          ),
        ],
      ),
    ));
  }
}
