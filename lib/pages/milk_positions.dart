import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MilkPositions extends StatefulWidget {
  const MilkPositions({super.key});

  @override
  State<MilkPositions> createState() => _MilkPositionsState();
}

class _MilkPositionsState extends State<MilkPositions> {
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
      body: const PositionsPage(),
    );
  }
}
class PositionsPage extends StatefulWidget {
  const PositionsPage({super.key});

  @override
  State<PositionsPage> createState() => _PositionsPageState();
}

class _PositionsPageState extends State<PositionsPage> {
  final GlobalKey _keyKaymak = GlobalKey();
  final GlobalKey _keyAyran= GlobalKey();
  final GlobalKey _keySuzmo = GlobalKey();
  final GlobalKey _keyKurut = GlobalKey();

  bool _isExpandedKaymak = false;
  bool _isExpandedAyran = false;
  bool _isExpandedSuzmo = false;
  bool _isExpandedKurut = false;

  void _toggleDescriptionKurut() {
    setState(() {
      _isExpandedKurut = !_isExpandedKurut;
    });

    if (_isExpandedKurut) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyKurut.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }
  void _toggleDescriptionKaymak() {
    setState(() {
      _isExpandedKaymak = !_isExpandedKaymak;
    });

    if (_isExpandedKaymak) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyKaymak.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }
  void _toggleDescriptionAyran() {
    setState(() {
      _isExpandedAyran = !_isExpandedAyran;
    });

    if (_isExpandedAyran) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyAyran.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }
  void _toggleDescriptionSuzmo() {
    setState(() {
      _isExpandedSuzmo = !_isExpandedSuzmo;
    });

    if (_isExpandedSuzmo) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keySuzmo.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }
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
                          image: AssetImage("assets/images/snacks/kaymak.jpg"),
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
              onTap: _toggleDescriptionKaymak,
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
            if (_isExpandedKaymak) _buildDescriptionSectionKaymak(),
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
                          image: AssetImage("assets/images/bar/ayran.jpg"),
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
              onTap: _toggleDescriptionAyran,
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
            if (_isExpandedAyran) _buildDescriptionSectionAyran(),
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
                          image: AssetImage("assets/images/snacks/suzma.jpg"),
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
              onTap: _toggleDescriptionSuzmo,
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
            if (_isExpandedSuzmo) _buildDescriptionSectionSuzmo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.kurut,
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
                  AppLocalizations.of(context)!.kurutPrice,
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
                          image: AssetImage("assets/images/snacks/traditionalsnacks/kurut.png"),
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
              onTap: _toggleDescriptionKurut,
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
            if (_isExpandedKurut) _buildDescriptionSectionKurut(),
          ],
        ),
      ),
    );
  }
  Widget _buildDescriptionSectionKaymak() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyKaymak,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedKaymak ? 300 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.descriptionKaymak,
              style: const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSectionAyran() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyAyran,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedAyran ? 300 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
            AppLocalizations.of(context)!.descriptionAyran,
              style:const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSectionKurut() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyKurut,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedKurut ? 300 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
            AppLocalizations.of(context)!.kurut,
              style: const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildDescriptionSectionSuzmo() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keySuzmo,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedSuzmo ? 300 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
            AppLocalizations.of(context)!.descriptionSuzmo,
        style: const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

}


