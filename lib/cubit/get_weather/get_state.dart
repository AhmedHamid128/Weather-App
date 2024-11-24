class weatherState {}

class Initweather extends weatherState {}

class Loadingweather extends weatherState {}

class Successweather extends weatherState {}

class Failweather extends weatherState {
  Failweather({required String eorr});
}
