import 'package:clean_arch_simple_example/weather/data_layer/data_source/remote_data_source.dart';
import 'package:clean_arch_simple_example/weather/data_layer/repository/weather_repository.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/entities/weather.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/repository/Base_weather_repository.dart';
import 'package:clean_arch_simple_example/weather/domain_layer/use_cases/get_weather_by_country.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(baseRemoteDataSource);
  Weather weather =
      await GetWeatherByCountryName(baseWeatherRepository).execute("London");

  print(weather);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
