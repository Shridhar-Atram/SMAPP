// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => launch(
            'https://www.freeprivacypolicy.com/live/76b9281d-dfd5-4e57-9e8d-633121754dbc'),
        child: Center(
          child: Container(
              margin: EdgeInsets.all(100),
              //  padding: EdgeInsets.all(100),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.blue,
                  ),
                  // Spacer(),
                  Text(
                    'Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              )),
        ));
  }
}
