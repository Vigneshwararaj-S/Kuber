import 'package:flutter/material.dart';
import 'package:kuber/loginUI/widgets/original_button.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            Hero(
              tag: 'logoAnimation',
              child: Image.asset(
                'assets/images/Kuber.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OriginalButton(
                text: 'Get Started',
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}