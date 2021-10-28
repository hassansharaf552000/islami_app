import 'package:flutter/material.dart';
import 'package:islami/Home/hadeth/HadethTab.dart';
import 'package:islami/Home/quran/QuranTab.dart';
import 'package:islami/Home/radio/RadioTab.dart';
import 'package:islami/Home/tasbeh/TasbehTab.dart';
import 'package:islami/main.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/images/main_background.png'),
      Scaffold(
        appBar: AppBar(
          title: Text('islami'),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MyThemeDta.primarycolor,
          ),
          child: BottomNavigationBar(
            currentIndex: curentindex,
            onTap: (index) {
              curentindex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'Hadeth',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeh',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio',
              ),
            ],
          ),
        ),
        body: Container(
          child: views[curentindex],
        ),
      ),
    ]);
  }

  List<Widget> views = [
    QuranTap(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
