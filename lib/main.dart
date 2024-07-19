import 'dart:math';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:qattama_web_app/l10n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    const maxPossibleTsf = 1.1;
    return MaterialApp(
      title: 'Qattama',
      theme: ThemeData(),
      supportedLocales: L18n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      builder: (context, child) {
        final data = MediaQuery.of(context);
        final newTextScaleFactor = min(maxPossibleTsf, data.textScaleFactor);
        // можно так, если нам надо задать минимальное и
        // максимальное значение:
        // data.textScaleFactor.clamp(minPossibleTsf, maxPossibleTsf);
        return MediaQuery(
          data: data.copyWith(
            textScaleFactor: newTextScaleFactor,
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: SelectionPage(),
    );
  }
}

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Qattama',
          style: TextStyle(
              color: Color(0xFFEFDEBE),
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gothic'
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6A041D),
      ),
      body: const MainPage(),
    );
  }
}

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
                'text'
              ),
            ),
          )
        ],
      ),
    );
  }
}
