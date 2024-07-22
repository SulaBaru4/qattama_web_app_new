import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MilkPositions extends StatelessWidget {
  const MilkPositions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF6A041D),
        title: Text(
          AppLocalizations.of(context)!.milkPosition,
          style: const TextStyle(
              color: Color(0xFFEFDEBE),
              fontSize: 28,
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
                  AppLocalizations.of(context)!.kaymak,
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
                  AppLocalizations.of(context)!.kaymakPrice1P,
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
                  AppLocalizations.of(context)!.kaymakPrice1KG,
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
                          image: AssetImage("assets/images/kattama.jpeg"),
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
                  AppLocalizations.of(context)!.ayran,
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
                  AppLocalizations.of(context)!.ayranPrice,
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
                          image: AssetImage("assets/images/food/soups/pelmeni.png"),
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
                  AppLocalizations.of(context)!.suzmo,
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
                  AppLocalizations.of(context)!.suzmoPrice,
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
                          image: AssetImage("assets/images/food/mainfood/manti.png"),
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
