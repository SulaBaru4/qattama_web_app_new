import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:qattama_web_app/providers/locale_provider.dart';
import 'package:qattama_web_app/widgets/locale_switcher_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        const maxPossibleTsf = 1.1;
        final provider = Provider.of<LocaleProvider>(context);
        return MaterialApp(
          title: 'Qattama',
          theme: ThemeData(),
          supportedLocales: AppLocalizations.supportedLocales,
          locale: provider.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          builder: (context, child) {
            final data = MediaQuery.of(context);
            final newTextScaleFactor =
                min(maxPossibleTsf, data.textScaleFactor);
            return MediaQuery(
              data: data.copyWith(
                textScaleFactor: newTextScaleFactor,
              ),
              child: child ?? const SizedBox.shrink(),
            );
          },
          home: const SelectionPage(),
        );
      });
}

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          LocaleSwitcherWidgets(),
          SizedBox(
            width: 12,
          )
        ],
        title: const Text(
          'QATTAMA',
          style: TextStyle(
              color: Color(0xFFEFDEBE),
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gothic'),
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
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/art3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const FirstPage(),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/art3.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const SecondPage(),
              ),
            ],
          ),
        ),
        Container(
          height: 32,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFF6A041D),
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2, // Укажите количество страниц в PageView
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Color(0xFFEFDEBE),
              ),
            ),
          ),
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
          const Divider(
            color: Colors.transparent,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              AppLocalizations.of(context)!.mainFood,
              style: const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/kattama.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.kattama,
                style: const TextStyle(
                  color: Color(0xFF6A041D),
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            AppLocalizations.of(context)!.service,
                            style: const TextStyle(
                              color: Color(0xFF6A041D),
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.20,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                                color: Color(0xFF6A041D),
                              ),
                              Expanded(
                                child: Text(
                                  AppLocalizations.of(context)!.scroll,
                                  style: const TextStyle(
                                    color: Color(0xFF6A041D),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                  ),
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.3,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.menu,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 193 * 1.3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/plow.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.food,
                    style: const TextStyle(
                      color: Color(0xFF6A041D),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 193 * 1.3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/snacks/traditionalsnacks/kurut.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.milkPosition,
                    style: const TextStyle(
                      color: Color(0xFF6A041D),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 193 * 1.3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/kymyz.jpg'),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.traditionalDrinks,
                    style: const TextStyle(
                      color: Color(0xFF6A041D),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
