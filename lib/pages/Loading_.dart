import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';

class Loading_weather extends StatelessWidget {
  const Loading_weather({super.key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: TextColor,
              backgroundColor: TextColor.withOpacity(0.1),
              strokeWidth: 6,
            ),
          ],
        ),
      ),
    );
  }
}
