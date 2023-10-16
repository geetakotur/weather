import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/viewmodels/theme_viewmodel.dart';
import 'package:weather/ui/viewmodels/weather_viewmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:weather/ui/widgets/language_picker.dart';
import 'package:weather/ui/widgets/weather_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherViewModel = Provider.of<WeatherViewModel>(context);
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Report'.tr()),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.settings),
        //     onPressed: () {
        //       themeViewModel.toggleTheme();
        //     },
        //   ),
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (weatherViewModel.isLoading)
              CircularProgressIndicator()
            else if (weatherViewModel.weatherData != null)
              WeatherTile(weatherData: weatherViewModel.weatherData!)
            else
              Text('no_data_available'.tr()),
            SizedBox(height: 20),
            Text('choose_theme'.tr()),
            Switch(
              value: themeViewModel.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeViewModel.toggleTheme();
              },
            ),
            SizedBox(height: 20),
            LanguagePicker(), // Add the LanguagePicker widget
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          weatherViewModel.fetchWeatherData('YourCity'); // Replace 'YourCity' with the desired city
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
