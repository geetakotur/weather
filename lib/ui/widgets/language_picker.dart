import 'package:flutter/material.dart';

class LanguagePicker extends StatefulWidget {
  @override
  _LanguagePickerState createState() => _LanguagePickerState();
}

class _LanguagePickerState extends State<LanguagePicker> {
  String selectedLanguage = 'English'; // Default language

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Select Language:'),
        DropdownButton<String>(
          value: selectedLanguage,
          items: <String>['English', 'Spanish', 'French', 'German']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedLanguage = newValue!;
              // Implement language change logic here
            });
          },
        ),
      ],
    );
  }
}
