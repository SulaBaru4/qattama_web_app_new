import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qattama_web_app/providers/locale_provider.dart';
import 'package:provider/provider.dart';

class LocaleSwitcherWidgets extends StatelessWidget {
  const LocaleSwitcherWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale;
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        icon: Container(width: 12,),
        items: AppLocalizations.supportedLocales.map(
              (nextLocale) {
            return DropdownMenuItem(
              value: nextLocale,
              onTap: () {
                final provider = Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(nextLocale);
              },
              child: Center(
                child: Text(nextLocale.toString(),
                style: TextStyle(
                  color: Color(0xFFEFDEBE),
                  fontSize: 32,
                  fontWeight: FontWeight.w400
                ),
                ),
              ),
            );
          },
        ).toList(), // Преобразование Iterable в List
        onChanged: (_) {
          // Здесь можно добавить обработчик изменения выбранного значения, если необходимо
        },
      ),
    );
  }
}
