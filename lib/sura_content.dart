import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_model.dart';

class SuraContent extends StatefulWidget {
  static const String routeName = 'suraContent';

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List <String>varses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraModel;

    loadfile(args.index);


    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
          appBar: AppBar(

            title: Text(args.SuraNme, style: Theme
                .of(context)
                .textTheme
                .titleSmall,),
          ),
          body: ListView.separated(separatorBuilder: (context, index) =>
              Divider(
                  indent: 30,
                  endIndent: 30,
                  color: Theme
                      .of(context)
                      .primaryColor, thickness: 2),
            itemBuilder:
                (context, index) {
              return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(varses[index]));
            },
            itemCount: varses.length,)
      ),
    );
  }

  void loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String>lines = sura.split('/n');
    varses = lines;
    print(lines);
    setState(() {

    });
  }
}
