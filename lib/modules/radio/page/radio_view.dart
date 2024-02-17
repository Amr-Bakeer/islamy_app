import 'package:flutter/material.dart';

import '../../../config/application_theme_manager.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/radio.png",
            height: mediaQuery.height * 0.4,
            width: mediaQuery.width * 0.8,
          ),
          const Text(
            "إذاعة القرآن الكريم",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(
            height: 40,
            thickness: 0,
            color: Color.fromRGBO(0, 0, 0, 0),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Expanded(
                    child: Icon(
                  Icons.skip_previous,
                  size: 50,
                  color: ApplicationThemeManager.primaryColor,
                )),
              ),
              Center(
                child: Expanded(
                    child: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: ApplicationThemeManager.primaryColor,
                )),
              ),
              Center(
                child: Expanded(
                    child: Icon(
                  Icons.skip_next,
                  size: 50,
                  color: ApplicationThemeManager.primaryColor,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
