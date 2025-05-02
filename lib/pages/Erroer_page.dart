import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/pages/serach_page.dart';

class ErroerPage extends StatelessWidget {
  const ErroerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kbackColor,
      appBar: AppBar(
        backgroundColor: kbackColor,
        title: Text(
          'country',
          style: TextStyle(color: TextColor),
        ),
      ),
      body:const Center(
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
