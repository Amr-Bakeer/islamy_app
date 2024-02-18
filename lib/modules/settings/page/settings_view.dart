import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/config/settings_provider.dart';
import 'package:provider/provider.dart';

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
    var lang = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);

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
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            items: languagesList,
            initialItem: vm.currentLanguage == "en" ? "English" : "Arabic",
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "Arabic") {
                vm.changeLanguage("ar");
              }
            },
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            lang.theme,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            items: themeMode,
            onChanged: (value) {
              if (value == "Dark") {
                vm.changeTheme(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changeTheme(ThemeMode.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
