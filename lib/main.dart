import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/repository/weather_repository.dart';
import 'package:weather/data/api/weather_api.dart'; // Import the WeatherApi class

import 'ui/screens/home_screen.dart';
import 'ui/viewmodels/theme_viewmodel.dart';
import 'ui/viewmodels/weather_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeViewModel()),
        ChangeNotifierProvider(
          create: (context) => WeatherViewModel(
            WeatherRepository(
              WeatherApi(apiKey: 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=cd6db59111a80ac1b3f8037f897ceb87'),
            ),
          ),
        ),
        // Add more providers as needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeViewModel.themeMode,
      home: HomeScreen(),
      // Add more configuration as needed
    );
  }
}
