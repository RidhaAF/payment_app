import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
            top: 50.0,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/icon_one.png',
                  height: 200,
                  width: 267,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Upgrade to ',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Pro',
                    style: titleTextStyle.copyWith(
                      color: Color(0XFF007DFF),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Go unlock all features and\nbuild your own business bigger',
                style: subtitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
