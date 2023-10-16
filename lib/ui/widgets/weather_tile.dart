import 'package:flutter/material.dart';
import 'package:weather/data/models/weather_data.dart';
 // Import the WeatherData model

class WeatherTile extends StatelessWidget {
  final WeatherData weatherData;

  WeatherTile({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'City: ${weatherData.cityName}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Temperature: ${weatherData.temperature}°C'),
            Text('Description: ${weatherData.weatherDescription}'),
          ],
        ),
      ),
    );
  }
}
