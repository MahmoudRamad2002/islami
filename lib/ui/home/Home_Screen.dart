import 'package:flutter/material.dart';
import 'package:islami/mythem.dart';
import 'package:islami/ui/tabs/hads_tab.dart';
import 'package:islami/ui/tabs/quran_tab.dart';
import 'package:islami/ui/tabs/radio_tab.dart';
import 'package:islami/ui/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget>tabs = [quranTab(), sebahaTab(), hadethTab(), radioTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png", width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(

          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;

                setState(() {

                });
              },

              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                    label: "Quran",
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor),
                BottomNavigationBarItem(icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png")),
                    label: "Ahadeth",
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                    label: "Sebha",
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                    label: "Radio",
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor),
              ]
          ),
          appBar: AppBar(
            title: Text('islami', style: Theme
                .of(context)
                .textTheme
                .titleSmall
              //style: ,

            ),
          ),
          body: tabs[index],

        ),
      ],
    );
  }
}
