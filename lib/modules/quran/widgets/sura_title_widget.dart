import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitleWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
          width: 2,
          child: VerticalDivider(),
        ),
        Expanded(
          child: Text(
            suraName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
