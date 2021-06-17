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
  int selectedIndex = -1;

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
                height: 150,
              ),
            ),
            SizedBox(
              height: 30,
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
                    color: Colors.pink,
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
              height: 20,
            ),
          ],
        ),
      );
    }

    Widget option(int index, String title, String subtitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0XFF007DFF)
                  : Color(0XFF4D5B7C),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              selectedIndex == index
                  ? Image.asset(
                      'assets/check_two.png',
                      width: 18,
                    )
                  : Image.asset(
                      'assets/check.png',
                      width: 18,
                    ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: planTextStyle,
                    ),
                    Text(
                      subtitle,
                      style: optionTextStyle,
                    ),
                  ],
                ),
              ),
              Text(
                price,
                style: priceTextStyle,
              ),
            ],
          ),
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70),
            ),
          ),
          child: Text(
            'Checkout Now',
            style: buttonTextStyle,
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              option(0, 'Monthly', 'Good for starting up', '\$20'),
              option(1, 'Quarterly', 'Focusing on building', '\$55'),
              option(2, 'Yearly', 'Steady company', '\$220'),
              selectedIndex == -1 ? SizedBox() : checkoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
