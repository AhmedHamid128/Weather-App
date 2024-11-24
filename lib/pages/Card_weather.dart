import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_cubit.dart';
import 'package:weather_app/model/weather_json_dart_model.dart';

class CardWeather extends StatefulWidget {
  int index;
  CardWeather({super.key, required this.index});

  @override
  State<CardWeather> createState() => _CardWeatherState();
}

class _CardWeatherState extends State<CardWeather> {
  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<weatherCubit>(context).wc!;
    List<IconData> iconcard = BlocProvider.of<weatherCubit>(context).iconlist!;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Textcolor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                DateFormat('E - d').format(
                  DateTime.parse(
                    weather.forecast.forecastday[widget.index].date.toString(),
                  ),
                ),
                style: TextStyle(color: Textcolor, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                iconcard[widget.index],
                color: Textcolor,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                weather.forecast.forecastday[widget.index].day.condition.text
                    .toString(),
                style: TextStyle(color: Textcolor, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                weather.forecast.forecastday[widget.index].day.avgtempC
                    .toString(),
                style: TextStyle(color: Textcolor, fontSize: 18),
              ), // average c in day
            ],
          ),
        ),
      ),
    );
  }
}
