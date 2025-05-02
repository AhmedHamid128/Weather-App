import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/model/weather_json_dart_model.dart';
import 'package:weather_app/pages/Card_weather.dart';
import 'package:weather_app/pages/serach_page.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
 
  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<WeatherCubit>(context).weathercubit!;
    IconData iconweather = BlocProvider.of<WeatherCubit>(context).icon;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          const  SerachPage(),
          const  SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.location_pin,
                  color: TextColor,
                  size: 45,
                ),
             const   SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    weather.location.country,
                    style: TextStyle(color: TextColor, fontSize: 25),
                  ),
                  Text(
                    weather.location.name,
                    style: TextStyle(color: TextColor, fontSize: 18),
                  ),
                ]),
              ],
            ),
          const  SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      weather.current.condition.text,
                      style: TextStyle(color: TextColor, fontSize: 18),
                    ),
                    Text(
                      weather.current.tempC.toString(),
                      style: TextStyle(color: TextColor, fontSize: 18),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 20,
                ),
                Icon(
                  iconweather,
                  size: 50,
                  color: TextColor,
                )
              ],
            ),
          const  SizedBox(
              height: 150,
            ),
            Row(
              children: [
                CardWeather(
                  index: 0,
                ), // now day
                CardWeather(
                  index: 1,
                ), // day 2
                CardWeather(
                  index: 2,
                ), // day 3
              ],
            )
          ],
        ),
      ),
    );
  }
}
