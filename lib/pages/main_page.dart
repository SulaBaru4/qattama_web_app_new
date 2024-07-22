/*
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:qattama_web_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Artboard2.png'),
                  fit: BoxFit.cover)),
          child: FirstPage(),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 1,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover)),
        ),
      ],
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width/2,
              child: Text(
                AppLocalizations.of(context)!.welcome,
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/
