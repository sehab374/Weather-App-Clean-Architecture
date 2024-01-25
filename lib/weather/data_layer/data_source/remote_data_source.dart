import 'dart:convert';

import 'package:clean_arch_simple_example/weather/data_layer/models/weather_model.dart';
import 'package:dio/dio.dart';

import '../../../core/utills/constants.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstants.baseUrl}/weather?q=${countryName}&appid=${AppConstants.apiKey}');
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
