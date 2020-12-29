import 'package:flutter/material.dart';

class ResponsiveOnePage extends StatefulWidget {
  ResponsiveOnePage({Key key}) : super(key: key);

  @override
  _ResponsiveOnePageState createState() => _ResponsiveOnePageState();
}

class _ResponsiveOnePageState extends State<ResponsiveOnePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.amber,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          color: Colors.purple,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.lime,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
