class WeatherState {}

class Initweather extends WeatherState {}

class Loadingweather extends WeatherState {}

class Successweather extends WeatherState{}

class Failweather extends WeatherState {
  Failweather({required String eorr});
}
