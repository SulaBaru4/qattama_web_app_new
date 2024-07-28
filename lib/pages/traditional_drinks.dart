import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  final GlobalKey _keyMilkTea = GlobalKey();
  final GlobalKey _keyBlackTea = GlobalKey();
  final GlobalKey _keyGreenTea = GlobalKey();
  final GlobalKey _keyKymyz = GlobalKey();

  bool _isExpandedMilkTea = false;
  bool _isExpandedBlackTea = false;
  bool _isExpandedGreenTea = false;
  bool _isExpandedKymyz = false;

  void _toggleDescriptionKymyz() {
    setState(() {
      _isExpandedKymyz = !_isExpandedKymyz;
    });
    if (_isExpandedKymyz) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(
          _keyKymyz.currentContext!,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _toggleDescriptionBlackTea() {
    setState(() {
      _isExpandedBlackTea = !_isExpandedBlackTea;
    });

    if (_isExpandedBlackTea) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(_keyBlackTea.currentContext!,
            duration: const Duration(seconds: 1), curve: Curves.easeInOut);
      });
    }
  }

  void _toggleDescriptionMilkTea() {
    setState(() {
      _isExpandedMilkTea = !_isExpandedMilkTea;
    });

    if (_isExpandedMilkTea) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(_keyMilkTea.currentContext!,
            duration: const Duration(seconds: 1), curve: Curves.easeInOut);
      });
    }
  }

  void _toggleDescriptionGreenTea() {
    setState(() {
      _isExpandedGreenTea = !_isExpandedGreenTea;
    });

    if (_isExpandedGreenTea) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scrollable.ensureVisible(_keyGreenTea.currentContext!,
            duration: const Duration(seconds: 1), curve: Curves.easeInOut);
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
                  AppLocalizations.of(context)!.kymyz,
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
                  AppLocalizations.of(context)!.kymyzPrice,
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
                          image: AssetImage(
                              "assets/images/bar/traditionalbar/kymyz.png"),
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
              onTap: _toggleDescriptionKymyz,
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
            if (_isExpandedKymyz) _buildDescriptionSectionKymyz(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.milkTea,
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
                  AppLocalizations.of(context)!.milkteaPrice1L,
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
                  AppLocalizations.of(context)!.milkteaPrice15L,
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
                          image: AssetImage(
                              "assets/images/bar/hotbar/milktea.png"),
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
              onTap: _toggleDescriptionMilkTea,
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
            if (_isExpandedMilkTea) _buildDescriptionSectionMilkTea(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.blacktea,
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
                  AppLocalizations.of(context)!.blackteaPrice1L,
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
                  AppLocalizations.of(context)!.blackteaPrice15L,
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
                          image: AssetImage(
                              "assets/images/bar/hotbar/blacktea.png"),
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
              onTap: _toggleDescriptionBlackTea,
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
            if (_isExpandedBlackTea) _buildDescriptionSectionBlackTea(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.greentea,
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
                  AppLocalizations.of(context)!.greenteaPrice1L,
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
                  AppLocalizations.of(context)!.greenteaPrice15L,
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
                          image: AssetImage(
                              "assets/images/bar/hotbar/greentea.png"),
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
              onTap: _toggleDescriptionGreenTea,
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
            if (_isExpandedGreenTea) _buildDescriptionSectionGreenTea(),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionSectionKymyz() {
    return AnimatedContainer(
        padding: const EdgeInsets.all(20),
        key: _keyKymyz,
        duration: const Duration(milliseconds: 300),
        height: _isExpandedKymyz ? 200 : 0,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
              AppLocalizations.of(context)!.descriptionKymyz,
                style: const TextStyle(
                  color: Color(0xFF6A041D),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildDescriptionSectionGreenTea() {
    return AnimatedContainer(
        padding: const EdgeInsets.all(20),
        key: _keyGreenTea,
        duration: const Duration(milliseconds: 300),
        height: _isExpandedGreenTea ? 200 : 0,
        child: SingleChildScrollView(
          child: Text(
              AppLocalizations.of(context)!.descriptionGreenTea,
            style:const TextStyle(
              color: Color(0xFF6A041D),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }

  Widget _buildDescriptionSectionBlackTea() {
    return AnimatedContainer(
        padding: const EdgeInsets.all(20),
        key: _keyBlackTea,
        duration: const Duration(milliseconds: 300),
        height: _isExpandedBlackTea ? 200 : 1,
        child: SingleChildScrollView(
          child: Text(
            AppLocalizations.of(context)!.descriptionBlackTea,
            style:const TextStyle(
              color: Color(0xFF6A041D),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }

  Widget _buildDescriptionSectionMilkTea() {
    return AnimatedContainer(
        padding: const EdgeInsets.all(20),
        key: _keyMilkTea,
        duration: const Duration(milliseconds: 300),
        height: _isExpandedMilkTea ? 200 : 1,
        child: SingleChildScrollView(
          child: Text(
              AppLocalizations.of(context)!.descriptionMilkTea,
            style: const TextStyle(
              color: Color(0xFF6A041D),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
