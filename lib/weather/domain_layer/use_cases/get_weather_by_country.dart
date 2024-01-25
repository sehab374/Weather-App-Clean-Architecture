import 'package:clean_arch_simple_example/weather/domain_layer/entities/weather.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/repository/Base_weather_repository.dart';

class GetWeatherByCountryName {
  ////reference from repository
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  //// get cityName from presentation Layer
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
