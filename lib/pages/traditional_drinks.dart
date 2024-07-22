import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class TraditionalDrinksPage extends StatelessWidget {
  const TraditionalDrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF6A041D),
        title: Text(
          AppLocalizations.of(context)!.traditionalDrinks,
          style: const TextStyle(
              color: Color(0xFFEFDEBE),
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: 'Gothic'),
        ),
      ),
      body: PositionsPage(),
    );
  }
}
class PositionsPage extends StatefulWidget {
  const PositionsPage({super.key});

  @override
  State<PositionsPage> createState() => _PositionsPageState();
}

class _PositionsPageState extends State<PositionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/art3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.milkTea,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.milkteaPrice1L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.milkteaPrice15L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 193 * 1.3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/bar/hotbar/milktea.png"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding:  const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),),
                    const Icon(Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.blacktea,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.blackteaPrice1L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.blackteaPrice15L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 193 * 1.3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/bar/hotbar/blacktea.png"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding:  const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),),
                    const Icon(Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.greentea,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.greenteaPrice1L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.greenteaPrice15L,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 193 * 1.3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/bar/hotbar/greentea.png"),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding:  const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),),
                    const Icon(Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
