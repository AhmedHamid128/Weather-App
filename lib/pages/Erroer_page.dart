import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/pages/serach_page.dart';

class ErroerPage extends StatelessWidget {
  const ErroerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kbackcolor,
      appBar: AppBar(
        backgroundColor: kbackcolor,
        title: Text(
          'country',
          style: TextStyle(color: Textcolor),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SerachPage(),
              Spacer(),
              Text(
                'Something eorr',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Try agin",
                style: TextStyle(color: Colors.black),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
