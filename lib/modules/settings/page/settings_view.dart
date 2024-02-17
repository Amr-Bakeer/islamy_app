import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  final List<String> languagesList = [
    "English",
    "Arabic",
  ];

  final List<String> themeMode = [
    "Dark",
    "Light",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(
        30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            "Language:",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            items: languagesList,
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "Theme Mode:",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            items: themeMode,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
