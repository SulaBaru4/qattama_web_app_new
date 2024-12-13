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
    return Container(
      child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: const Icon(Icons.language, color: Color(0xFFEFDEBE),size: 32,),
              dropdownColor: const Color(0xFF6A041D),
              items: AppLocalizations.supportedLocales.map(
                    (nextLocale) {
                  return DropdownMenuItem(
                    value: nextLocale,
                    onTap: () {
                      final provider = Provider.of<LocaleProvider>(context, listen: false);
                      provider.setLocale(nextLocale);
                    },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFF6A041D), // Задайте здесь желаемый цвет фона
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(getLanguageName(nextLocale),
                          style: const TextStyle(
                            color: Color(0xFFEFDEBE),
                            fontSize: 32,
                            fontWeight: FontWeight.w400
                          ),
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
            ),
    );
  }
}

String getLanguageName(Locale locale) {
  switch (locale.languageCode) {
    case 'ky':
      return 'KG';
    case 'tr':
      return 'TR';
      case 'en':
    return 'EN';
      case 'ru':
    return 'RU';
  // Добавьте другие языки, если необходимо
    default:
      return locale.languageCode;
  }
}


