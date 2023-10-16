import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_data.dart';
import 'package:weather/data/repository/weather_repository.dart';


class WeatherViewModel with ChangeNotifier {
  final WeatherRepository _repository;
  WeatherData? _weatherData;
  bool _isLoading = false;

  WeatherViewModel(this._repository);

  WeatherData? get weatherData => _weatherData;
  bool get isLoading => _isLoading;

  Future<void> fetchWeatherData(String city) async {
    _isLoading = true;
    notifyListeners();

    try {
      _weatherData = await _repository.getWeatherData(city);
    } catch (e) {
      _weatherData = null; // Handle errors as needed
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
