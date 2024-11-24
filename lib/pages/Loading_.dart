import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';

class Loading_weather extends StatelessWidget {
  const Loading_weather({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Textcolor,
              backgroundColor: Textcolor.withOpacity(0.1),
              strokeWidth: 6,
            ),
          ],
        ),
      ),
    );
  }
}
