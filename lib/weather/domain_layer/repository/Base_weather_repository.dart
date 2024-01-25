import 'package:clean_arch_simple_example/weather/domain_layer/entities/weather.dart';

abstract class BaseWeatherRepository
{
  Future<Weather> getWeatherByCityName(String cityName);
}