import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_json_dart_model.dart';

class WeatherDioModel {
  final dio = Dio();

  Future<Weather> getHttp({required String loc}) async {
    final response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json',
        queryParameters: {
          'key': '16c5828431de405ba5c185926242208',
          'q': loc,
          'api': 'no',
          'days': 3,
        }

        //'https://api.weatherapi.com/v1/current.json?key=16c5828431de405ba5c185926242208&q=London&aqi=no'
        );
    Weather weather = Weather.fromJson(response.data);
    return weather;

    /* WeatherModel weatherModel = WeatherModel.fromJson(response.data
        /*
      name: response.data['location']['name'],
      country: response.data["current"]['name'],
      icon: response.data['location']["condition"]['icon'],
      temp_c: response.data["current"]['temp_c'],
      text: response.data["current"]["condition"]['text'],
      */
        );
        */

    //print(ww.location.country);
    // print(weather.forecast.forecastday[0].date);

    //print(weatherModel.name);
    //print(weatherModel.country);
    //print("Country: ${response.data['location']['country']}");
  }
}
