import 'package:intl_phone_field/countries.dart';

List<Country> _myCountries = const [
  Country(
    name: "Yemen",
    nameTranslations: {
      "en": "Yemen",
      "ar": "اليمن",
    },
    flag: "🇾🇪",
    code: "YE",
    dialCode: "967",
    minLength: 9,
    maxLength: 9,
  ),
  Country(
    name: "Saudi Arabia",
    nameTranslations: {
      "en": "Saudi Arabia",
      "ar": "السعودية",
    },
    flag: "🇸🇦",
    code: "SA",
    dialCode: "966",
    minLength: 9,
    maxLength: 9,
  ),
  Country(
    name: "United Arab Emirates",
    nameTranslations: {
      "en": "United Arab Emirates",
      "ar": "الإمارات العربية المتحدة",
    },
    flag: "🇦🇪",
    code: "AE",
    dialCode: "971",
    minLength: 9,
    maxLength: 9,
  ),
  Country(
    name: "Qatar",
    nameTranslations: {
      "en": "Qatar",
      "ar": "قطر",
    },
    flag: "🇶🇦",
    code: "QA",
    dialCode: "974",
    minLength: 8,
    maxLength: 8,
  ),
  Country(
    name: "Oman",
    nameTranslations: {"en": "Oman", "ar": "عمان"},
    flag: "🇴🇲",
    code: "OM",
    dialCode: "968",
    minLength: 8,
    maxLength: 8,
  ),
  Country(
    name: "Bahrain",
    nameTranslations: {
      "en": "Bahrain",
      "ar": "البحرين",
    },
    flag: "🇧🇭",
    code: "BH",
    dialCode: "973",
    minLength: 8,
    maxLength: 8,
  ),
  Country(
    name: "Kuwait",
    nameTranslations: {
      "en": "Kuwait",
      "ar": "الكويت",
    },
    flag: "🇰🇼",
    code: "KW",
    dialCode: "965",
    minLength: 8,
    maxLength: 8,
  ),
];

List<Country> sortedCountries = List.from(_myCountries)..sort((a, b) => a.name.compareTo(b.name));
