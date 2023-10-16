import 'package:weather/data/api/weather_api.dart';
import 'package:weather/data/models/weather_data.dart';

class WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepository(this._weatherApi);

  Future<WeatherData> getWeatherData(String city) async {
    try {
      final Map<String, dynamic> weatherMap = await _weatherApi.getWeatherData(city);
      final WeatherData weatherData = WeatherData.fromJson(weatherMap);
      return weatherData;
    } catch (e) {
      throw Exception('Failed to get weather data: $e');
    }
  }
}
