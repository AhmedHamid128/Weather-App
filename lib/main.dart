import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/pages/Homepage.dart';

void main() {
  runApp(Weather_app());
}

class Weather_app extends StatelessWidget {
  const Weather_app({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => weatherCubit(),
      child: MaterialApp(
        home: Homepage(),
        theme: ThemeData(useMaterial3: true),
      ),
    );
  }
}
