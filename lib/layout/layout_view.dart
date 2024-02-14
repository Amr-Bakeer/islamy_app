import 'package:flutter/material.dart';
import 'package:islamy_app/modules/hadeth/page/hadeth_view.dart';
import 'package:islamy_app/modules/quran/page/quran_view.dart';
import 'package:islamy_app/modules/radio/page/radio_view.dart';
import 'package:islamy_app/modules/settings/page/settings_view.dart';
import 'package:islamy_app/modules/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    const TasbehView(),
    const RadioView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/main_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
              label: "القرآن",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
              label: "الأحاديث",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
              label: "التسبيح",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
              label: "الراديو",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "الإعدادات",
            ),
          ],
        ),
      ),
    );
  }
}
