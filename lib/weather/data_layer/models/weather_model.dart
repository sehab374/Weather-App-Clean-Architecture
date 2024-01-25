import 'package:clean_arch_simple_example/weather/domain_layer/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.cityName, super.main, super.description, super.pressure);

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json["id"], json["name"], json["weather"][0]["main"],
        json["weather"][0]["description"], json["main"]["pressure"]);
  }
}
