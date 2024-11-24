//MVC
//Model
//veiw
//controler

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

  /*
  WeatherModel.fromJson(dynamic json) {
    name:
    json['location']['name'];
    country = json['location']['country'];
    temp_c = json["current"]['temp_c'];
    text = json["current"]["condition"]['text'];
    icon = json['location']["condition"]['icon'];
  }
   */

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      name: json['location']['name'] ?? 'Unknown',
      country: json['location']['country'] ?? 'Unknown',
      icon: json['current']['condition']['icon'] ?? '',
      temp_c: json['current']['temp_c']?.toDouble() ?? 0.0,
      text: json['current']['condition']['text'] ?? '',
    );
  }

  /*
  factory WeatherModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return WeatherModel(
        name: 'Unknown',
        country: 'Unknown',
        icon: '',
        temp_c: 0.0,
        text: '',
      );
    }

    return WeatherModel(
      name: json['location']?['name'] ?? 'Unknown',
      country: json['location']?['country'] ?? 'Unknown',
      icon: json['current']?['condition']?['icon'] ?? '',
      temp_c: (json['current']?['temp_c'] ?? 0.0).toDouble(),
      text: json['current']?['condition']?['text'] ?? '',
    );
  }
  */
}
