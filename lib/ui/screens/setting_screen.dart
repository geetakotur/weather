import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/ui/viewmodels/theme_viewmodel.dart';
// Import the ThemeViewModel

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Choose App Theme:'),
            Switch(
              value: themeViewModel.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeViewModel.toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
