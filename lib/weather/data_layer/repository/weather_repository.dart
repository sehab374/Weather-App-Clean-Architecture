import 'package:clean_arch_simple_example/weather/data_layer/data_source/remote_data_source.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/entities/weather.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/repository/Base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {

  BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
