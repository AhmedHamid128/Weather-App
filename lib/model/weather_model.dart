

class WeatherModel {
  String? name;
  String? country;
  double? temp_c;
  String? text;
  String? icon;

  WeatherModel({
    required this.name,
    required this.country,
    required this.icon,
    required this.temp_c,
    required this.text,
  });


  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      name: json['location']['name'] ?? 'Unknown',
      country: json['location']['country'] ?? 'Unknown',
      icon: json['current']['condition']['icon'] ?? '',
      temp_c: json['current']['temp_c']?.toDouble() ?? 0.0,
      text: json['current']['condition']['text'] ?? '',
    );
  }

 
}
