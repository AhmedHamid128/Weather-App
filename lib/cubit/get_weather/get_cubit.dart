import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/colors.dart';
import 'package:weather_app/cubit/get_weather/get_state.dart';
import 'package:weather_app/model/weather_json_dart_model.dart';
import 'package:weather_app/service/weather_dio_model.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(Initweather());
  IconData icon = Icons.sunny;
  List<IconData> iconlist = [
    Icons.sunny,
    Icons.sunny,
    Icons.sunny,
  ];
  Weather? weathercubit;

  void getweathercubit({required loccubit}) async {
    // loading
    emit(Loadingweather());
    try {
       weathercubit = await WeatherDioModel().getHttp(loc: loccubit);
      switch ( weathercubit!.current.condition.text) {
        case 'Sunny':
          {
            TextColor = Color(0xffFAFAFA);
            kbackColor = Color(0xffFFA957);
          }
        case 'Clear':
          {
            TextColor = Colors.black;
            kbackColor = Color.fromARGB(255, 229, 240, 238);
            icon = Icons.cloud_queue;
          }
        case 'Light rain':
          {
            TextColor = Colors.black;
            kbackColor = Color.fromARGB(255, 171, 235, 223);
          }
      }
      switch ( weathercubit!.forecast.forecastday[0].day.condition.text) {
        case 'Sunny':
          {
            iconlist[0] = Icons.cloud_queue;
          }
      }
      switch ( weathercubit!.forecast.forecastday[1].day.condition.text) {
        case 'Sunny':
          {
            iconlist[1] = Icons.cloud_queue;
          }
      }
      switch ( weathercubit!.forecast.forecastday[2].day.condition.text) {
        case 'Sunny':
          {
            iconlist[2] = Icons.cloud_queue;
          }
      }
      emit(Successweather());
      //print(wc!.location.country);
    } catch (e) {
      emit(Failweather(eorr: e.toString()));
    }
  }
}
