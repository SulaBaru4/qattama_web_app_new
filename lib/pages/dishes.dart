import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DishesPage extends StatelessWidget {
  const DishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF6A041D),
        title: Text(
          AppLocalizations.of(context)!.food,
          style: const TextStyle(
              color: Color(0xFFEFDEBE),
              fontSize: 35,
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
  final GlobalKey _keyPelmeniSoup = GlobalKey();
  final GlobalKey _keyKattama = GlobalKey();
  final GlobalKey _keyManti = GlobalKey();
  bool _isExpandedPelmeniSoup = false;
  bool _isExpandedKattama = false;
  bool _isExpandedManti = false;

  void _toggleDescriptionManti() {
    setState(() {
      _isExpandedManti = !_isExpandedManti;
    });

    if (_isExpandedManti) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyManti.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _toggleDescriptionKattama() {
    setState(() {
      _isExpandedKattama = !_isExpandedKattama;
    });

    if (_isExpandedKattama) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyKattama.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _toggleDescriptionPelmeniSoup() {
    setState(() {
      _isExpandedPelmeniSoup = !_isExpandedPelmeniSoup;
    });

    if (_isExpandedPelmeniSoup) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyPelmeniSoup.currentContext!,
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
                  AppLocalizations.of(context)!.kattama,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.kattamaPrice,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
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
              onTap: _toggleDescriptionKattama,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpandedKattama) _buildDescriptionSectionKattama(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.pelmeni,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.pelmeniPrice,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
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
              onTap: _toggleDescriptionPelmeniSoup,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpandedPelmeniSoup) _buildDescriptionSectionPelmeniSoup(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.manti,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.mantiPrice,
                  style: const TextStyle(
                    color: Color(0xFF6A041D),
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
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
              onTap: _toggleDescriptionManti,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.description,
                      style: const TextStyle(
                        color: Color(0xFF6A041D),
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Color(0xFF6A041D),
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpandedManti) _buildDescriptionSectionManti(),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSectionManti() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyManti,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedManti ? 300 : 0,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Text(
              AppLocalizations.of(context)!.descriptionManti,
              style: const TextStyle(
                  color: Color(0xFF6A041D),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Text(
                AppLocalizations.of(context)!.ingredientsManti,
              style: const TextStyle(
                  color: Color(0xFF6A041D),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ])),
    );
  }

  Widget _buildDescriptionSectionKattama() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyKattama,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedKattama ? 170 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
            AppLocalizations.of(context)!.descriptionKattama,
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

  Widget _buildDescriptionSectionPelmeniSoup() {
    return AnimatedContainer(
      padding: const EdgeInsets.all(20),
      key: _keyPelmeniSoup,
      duration: const Duration(milliseconds: 300),
      height: _isExpandedPelmeniSoup ? 250 : 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
            AppLocalizations.of(context)!.descriptionPelmeni,
              style: const TextStyle(
                color: Color(0xFF6A041D),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Text(
                AppLocalizations.of(context)!.ingredientsPelmeni,
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
}
