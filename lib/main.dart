import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
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
            SizedBox(
              height: 40,
            ),
          ],
        ),
      );
    }

    Widget option() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/check.png',
                width: 18,
              ),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            header(),
            option(),
            option(),
            option(),
          ],
        ),
      ),
    );
  }
}
