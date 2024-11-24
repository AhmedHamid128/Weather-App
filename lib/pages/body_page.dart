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
  Weather? w;

  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<weatherCubit>(context).wc!;
    IconData iconweather = BlocProvider.of<weatherCubit>(context).icon!;
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SerachPage(),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Textcolor,
                  size: 45,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    weather.location.country,
                    style: TextStyle(color: Textcolor, fontSize: 25),
                  ),
                  Text(
                    weather.location.name,
                    style: TextStyle(color: Textcolor, fontSize: 18),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      weather.current.condition.text,
                      style: TextStyle(color: Textcolor, fontSize: 18),
                    ),
                    Text(
                      weather.current.tempC.toString(),
                      style: TextStyle(color: Textcolor, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  iconweather,
                  size: 50,
                  color: Textcolor,
                )
              ],
            ),
            SizedBox(
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
