import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  double angle = 0;
  int counter = 0;
  int curentZekr = 0;

  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 60,
              ),
              height: 150,
              child: Image.asset("assets/images/head-of-seb7a.png"),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 100,
              ),
              width: mediaQuery.width,
              height: 250,
              child: GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Transform.rotate(
                  angle: angle,
                  child: Image.asset("assets/images/body-of-seb7a.png"),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            onClick();
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "$counter",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            onClick();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              azkar[curentZekr],
              style: const TextStyle(
                fontFamily: "El Messiri",
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }

  onClick() {
    setState(
      () {
        angle++;

        if (counter == 32) {
          curentZekr++;
        }
        curentZekr = curentZekr % azkar.length;

        counter = counter >= 32 ? 0 : ++counter;
      },
    );
  }
}
