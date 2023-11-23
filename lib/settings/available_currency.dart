import 'package:flutter/material.dart';

import 'setting_item.dart';

enum AvailableCurrencies {
  USD, // US Dollar
  AED, // United Arab Emirates Dirham (د.إ)
  AFN, // Afghan Afghani (؋)
  ALL, // Albanian Lek (L)
  AMD, // Armenian Dram (֏)
  ANG, // Netherlands Antillean Guilder (ƒ)
  AOA, // Angolan Kwanza (Kz)
  XCD, // East Caribbean Dollar ($)
  ARS, // Argentine Peso ($)
  AUD, // Australian Dollar ($)
  AWG, // Aruban Florin (Afl.)
  AZN, // Azerbaijani Manat (₼)
  BAM, // Bosnia-Herzegovina Convertible Mark (KM)
  BBD, // Barbadian Dollar ($)
  BDT, // Bangladeshi Taka (৳)
  BGN, // Bulgarian Lev (лв)
  BHD, // Bahraini Dinar (BD)
  BIF, // Burundian Franc (FBu)
  BMD, // Bermudian Dollar ($)
  BND, // Brunei Dollar ($)
  BOB, // Bolivian Boliviano (Bs)
  BRL, // Brazilian Real (R$)
  BSD, // Bahamian Dollar ($)
  BTN, // Bhutanese Ngultrum (Nu.)
  BWP, // Botswanan Pula (P)
  BYN, // Belarusian Ruble (Br)
  BZD, // Belize Dollar ($)
  CAD, // Canadian Dollar ($)
  CDF, // Congolese Franc (FC)
  CHF, // Swiss Franc (CHF)
  CLP, // Chilean Peso ($)
  CNY, // Chinese Yuan (¥)
  COP, // Colombian Peso ($)
  CRC, // Costa Rican Colón (₡)
  CUP, // Cuban Peso ($)
  CVE, // Cape Verdean Escudo (CVE)
  CZK, // Czech Republic Koruna (Kč)
  DJF, // Djiboutian Franc (Fdj)
  DKK, // Danish Krone (kr)
  DOP, // Dominican Peso (RD$)
  DZD, // Algerian Dinar (د.ج)
  EGP, // Egyptian Pound (E£)
  ERN, // Eritrean Nakfa (Nfk)
  ETB, // Ethiopian Birr (ETB)
  FJD, // Fijian Dollar ($)
  FKP, // Falkland Islands Pound (£)
  FOK, // Faroese Króna (kr)
  GEL, // Georgian Lari (₾)
  GGP, // Guernsey Pound (£)
  GHS, // Ghanaian Cedi (GH₵)
  GIP, // Gibraltar Pound (£)
  GMD, // Gambian Dalasi (D)
  GNF, // Guinean Franc (FG)
  GTQ, // Guatemalan Quetzal (Q)
  GYD, // Guyanaese Dollar ($)
  HKD, // Hong Kong Dollar ($)
  HNL, // Honduran Lempira (L)
  HRK, // Croatian Kuna (kn)
  HTG, // Haitian Gourde (G)
  HUF, // Hungarian Forint (Ft)
  IDR, // Indonesian Rupiah (Rp)
  ILS, // Israeli New Shekel (₪)
  IMP, // Isle of Man Pound (£)
  INR, // Indian Rupee (₹)
  IQD, // Iraqi Dinar (ع.د)
  IRR, // Iranian Rial (﷼)
  ISK, // Icelandic Króna (kr)
  JEP, // Jersey Pound (£)
  JMD, // Jamaican Dollar ($)
  JOD, // Jordanian Dinar (JD)
  KES, // Kenyan Shilling (KSh)
  KGS, // Kyrgystani Som (сом)
  KHR, // Cambodian Riel (៛)
  KID, // Kiribati Dollar ($)
  KMF, // Comorian Franc (CF)
  KRW, // South Korean Won (₩)
  KWD, // Kuwaiti Dinar (د.ك)
  KYD, // Cayman Islands Dollar ($)
  KZT, // Kazakhstani Tenge (₸)
  LAK, // Laotian Kip (₭)
  LBP, // Lebanese Pound (L£)
  LKR, // Sri Lankan Rupee (රු)
  LRD, // Liberian Dollar ($)
  LSL, // Lesotho Loti (L)
  LYD, // Libyan Dinar (LD)
  EUR, // EURO
  GBP, //
  JPY, //
  MAD, // Moroccan Dirham (د.م.)
  MDL, // Moldovan Leu (MDL)
  MGA, // Malagasy Ariary (Ar)
  MKD, // Macedonian Denar (ден)
  MMK, // Myanma Kyat (K)
  MNT, // Mongolian Tugrik (₮)
  MOP, // Macanese Pataca (MOP$)
  MRU, // Mauritanian Ouguiya (UM)
  MUR, // Mauritian Rupee (₨)
  MVR, // Maldivian Rufiyaa (Rf)
  MWK, // Malawian Kwacha (MK)
  MXN, // Mexican Peso ($)
  MYR, // Malaysian Ringgit (RM)
  MZN, // Mozambican Metical (MT)
  NAD, // Namibian Dollar ($)
  NGN, // Nigerian Naira (₦)
  NIO, // Nicaraguan Córdoba (C$)
  NOK, // Norwegian Krone (kr)
  NPR, // Nepalese Rupee (रू)
  NZD, // New Zealand Dollar ($)
  OMR, // Omani Rial (ر.ع.)
  PAB, // Panamanian Balboa (B/.)
  PEN, // Peruvian Nuevo Sol (S/.)
  PGK, // Papua New Guinean Kina (K)
  PHP, // Philippine Peso (₱)
  PKR, // Pakistani Rupee (₨)
  PLN, // Polish Zloty (zł)
  PYG, // Paraguayan Guarani (₲)
  QAR, // Qatari Rial (ر.ق)
  RON, // Romanian Leu (lei)
  RSD, // Serbian Dinar (дин)
  RUB, // Russian Ruble (₽)
  RWF, // Rwandan Franc (FRw)
  SAR, // Saudi Riyal (ر.س)
  SBD, // Solomon Islands Dollar ($)
  SCR, // Seychellois Rupee (₨)
  SDG, // Sudanese Pound (SDG)
  SEK, // Swedish Krona (kr)
  SGD, // Singapore Dollar ($)
  SHP, // Saint Helena Pound (£)
  SLL, // Sierra Leonean Leone (Le)
  SOS, // Somali Shilling (S)
  SRD, // Surinamese Dollar ($)
  SSP, // South Sudanese Pound (£)
  STN, // São Tomé and Príncipe Dobra (Db)
  SVC, // Salvadoran Colón ($)
  SYP, // Syrian Pound (SYP)
  SZL, // Eswatini Lilangeni (E)
  THB, // Thai Baht (฿)
  TJS, // Tajikistani Somoni (ЅМ)
  TMT, // Turkmenistani Manat (T)
  TND, // Tunisian Dinar (د.ت)
  TOP, // Tongan Pa'anga (T$)
  TRY, // Turkish Lira (₺)
  TTD, // Trinidad and Tobago Dollar ($)
  TVD, // Tuvaluan Dollar ($)
  TWD, // New Taiwan Dollar (NT$)
  TZS, // Tanzanian Shilling (TSh)
  UAH, // Ukrainian Hryvnia (₴)
  UGX, // Ugandan Shilling (USh)
  UYU, // Uruguayan Peso ($U)
  UZS, // Uzbekistan Som (so'm)
  VES, // Venezuelan Bolívar (Bs.S.)
  VND, // Vietnamese Dong (₫)
  VUV, // Vanuatu Vatu (VT)
  WST, // Samoan Tala (WS$)
  XAF, // Central African CFA Franc (FCFA)
  XDR, // Special Drawing Rights (SDR)
  XOF, // West African CFA Franc (CFA)
  XPF, // CFP Franc (₣)
  YER, // Yemeni Rial (YER)
  ZAR, // South African Rand (R)
  ZMW, // Zambian Kwacha (ZK)
  ZWL, // Zimbabwean Dollar (Z$)
}

/// Represent the available authentication methods our app supports
class AvailableCurrency extends SettingSelectionItem {
  final AvailableCurrencies currency;

  const AvailableCurrency(this.currency);

  String getIso4217Code() {
    return currency.toString().split('.')[1];
  }

  String getDisplayName(BuildContext context) {
    return getCurrencySymbol() + " " + getDisplayNameNoSymbol();
  }

  String getDisplayNameNoSymbol() {
    switch (getIso4217Code()) {
      case "AED":
        return "United Arab Emirates Dirham";
      case "AFN":
        return "Afghan Afghani";
      case "ALL":
        return "Albanian Lek";
      case "AMD":
        return "Armenian Dram";
      case "ANG":
        return "Netherlands Antillean Guilder";
      case "AOA":
        return "Angolan Kwanza";
      case "XCD":
        return "East Caribbean Dollar";
      case "ARS":
        return "Argentine Peso";
      case "AUD":
        return "Australian Dollar";
      case "AWG":
        return "Aruban Florin";
      case "AZN":
        return "Azerbaijani Manat";
      case "BAM":
        return "Bosnia-Herzegovina Convertible Mark";
      case "BBD":
        return "Barbadian Dollar";
      case "BDT":
        return "Bangladeshi Taka";
      case "BGN":
        return "Bulgarian Lev";
      case "BHD":
        return "Bahraini Dinar";
      case "BIF":
        return "Burundian Franc";
      case "BMD":
        return "Bermudian Dollar";
      case "BND":
        return "Brunei Dollar";
      case "BOB":
        return "Bolivian Boliviano";
      case "BRL":
        return "Brazilian Real";
      case "BSD":
        return "Bahamian Dollar";
      case "BTN":
        return "Bhutanese Ngultrum";
      case "BWP":
        return "Botswanan Pula";
      case "BYN":
        return "Belarusian Ruble";
      case "BZD":
        return "Belize Dollar";
      case "CAD":
        return "Canadian Dollar";
      case "CDF":
        return "Congolese Franc";
      case "CHF":
        return "Swiss Franc";
      case "CLP":
        return "Chilean Peso";
      case "CNY":
        return "Chinese Yuan";
      case "COP":
        return "Colombian Peso";
      case "CRC":
        return "Costa Rican Colón";
      case "CUP":
        return "Cuban Peso";
      case "CVE":
        return "Cape Verdean Escudo";
      case "CZK":
        return "Czech Republic Koruna";
      case "DJF":
        return "Djiboutian Franc";
      case "DKK":
        return "Danish Krone";
      case "EUR":
        return "Euro";
      case "GBP":
        return "Great Britain Pound";
      case "DOP":
        return "Dominican Peso";
      case "DZD":
        return "Algerian Dinar";
      case "EGP":
        return "Egyptian Pound";
      case "ERN":
        return "Eritrean Nakfa";
      case "ETB":
        return "Ethiopian Birr";
      case "FJD":
        return "Fijian Dollar";
      case "FKP":
        return "Falkland Islands Pound";
      case "FOK":
        return "Faroese Króna";
      case "GEL":
        return "Georgian Lari";
      case "GGP":
        return "Guernsey Pound";
      case "GHS":
        return "Ghanaian Cedi";
      case "GIP":
        return "Gibraltar Pound";
      case "GMD":
        return "Gambian Dalasi";
      case "GNF":
        return "Guinean Franc";
      case "GTQ":
        return "Guatemalan Quetzal";
      case "GYD":
        return "Guyanaese Dollar";
      case "HKD":
        return "Hong Kong Dollar";
      case "HNL":
        return "Honduran Lempira";
      case "HRK":
        return "Croatian Kuna";
      case "HTG":
        return "Haitian Gourde";
      case "HUF":
        return "Hungarian Forint";
      case "IDR":
        return "Indonesian Rupiah";
      case "ILS":
        return "Israeli New Shekel";
      case "IMP":
        return "Isle of Man Pound";
      case "INR":
        return "Indian Rupee";
      case "IQD":
        return "Iraqi Dinar";
      case "IRR":
        return "Iranian Rial";
      case "ISK":
        return "Icelandic Króna";
      case "JEP":
        return "Jersey Pound";
      case "JMD":
        return "Jamaican Dollar";
      case "JOD":
        return "Jordanian Dinar";
      case "JPY":
        return "Japanese Yen";
      case "KES":
        return "Kenyan Shilling";
      case "KGS":
        return "Kyrgystani Som";
      case "KHR":
        return "Cambodian Riel";
      case "KID":
        return "Kiribati Dollar";
      case "KMF":
        return "Comorian Franc";
      case "KRW":
        return "South Korean Won";
      case "KWD":
        return "Kuwaiti Dinar";
      case "KYD":
        return "Cayman Islands Dollar";
      case "KZT":
        return "Kazakhstani Tenge";
      case "LAK":
        return "Laotian Kip";
      case "LBP":
        return "Lebanese Pound";
      case "LKR":
        return "Sri Lankan Rupee";
      case "LRD":
        return "Liberian Dollar";
      case "LSL":
        return "Lesotho Loti";
      case "LYD":
        return "Libyan Dinar";
      case "MAD":
        return "Moroccan Dirham";
      case "MDL":
        return "Moldovan Leu";
      case "MGA":
        return "Malagasy Ariary";
      case "MKD":
        return "Macedonian Denar";
      case "MMK":
        return "Myanma Kyat";
      case "MNT":
        return "Mongolian Tugrik";
      case "MOP":
        return "Macanese Pataca";
      case "MRU":
        return "Mauritanian Ouguiya";
      case "MUR":
        return "Mauritian Rupee";
      case "MVR":
        return "Maldivian Rufiyaa";
      case "MWK":
        return "Malawian Kwacha";
      case "MXN":
        return "Mexican Peso";
      case "MYR":
        return "Malaysian Ringgit";
      case "MZN":
        return "Mozambican Metical";
      case "NAD":
        return "Namibian Dollar";
      case "NGN":
        return "Nigerian Naira";
      case "NIO":
        return "Nicaraguan Córdoba";
      case "NOK":
        return "Norwegian Krone";
      case "NPR":
        return "Nepalese Rupee";
      case "NZD":
        return "New Zealand Dollar";
      case "OMR":
        return "Omani Rial";
      case "PAB":
        return "Panamanian Balboa";
      case "PEN":
        return "Peruvian Nuevo Sol";
      case "PGK":
        return "Papua New Guinean Kina";
      case "PHP":
        return "Philippine Peso";
      case "PKR":
        return "Pakistani Rupee";
      case "PLN":
        return "Polish Zloty";
      case "PYG":
        return "Paraguayan Guarani";
      case "QAR":
        return "Qatari Rial";
      case "RON":
        return "Romanian Leu";
      case "RSD":
        return "Serbian Dinar";
      case "RUB":
        return "Russian Ruble";
      case "RWF":
        return "Rwandan Franc";
      case "SAR":
        return "Saudi Riyal";
      case "SBD":
        return "Solomon Islands Dollar";
      case "SCR":
        return "Seychellois Rupee";
      case "SDG":
        return "Sudanese Pound";
      case "SEK":
        return "Swedish Krona";
      case "SGD":
        return "Singapore Dollar";
      case "SHP":
        return "Saint Helena Pound";
      case "SLL":
        return "Sierra Leonean Leone";
      case "SOS":
        return "Somali Shilling";
      case "SRD":
        return "Surinamese Dollar";
      case "SSP":
        return "South Sudanese Pound";
      case "STN":
        return "São Tomé and Príncipe Dobra";
      case "SVC":
        return "Salvadoran Colón";
      case "SYP":
        return "Syrian Pound";
      case "SZL":
        return "Eswatini Lilangeni";
      case "THB":
        return "Thai Baht";
      case "TJS":
        return "Tajikistani Somoni";
      case "TMT":
        return "Turkmenistani Manat";
      case "TND":
        return "Tunisian Dinar";
      case "TOP":
        return "Tongan Pa'anga";
      case "TRY":
        return "Turkish Lira";
      case "TTD":
        return "Trinidad and Tobago Dollar";
      case "TVD":
        return "Tuvaluan Dollar";
      case "TWD":
        return "New Taiwan Dollar";
      case "TZS":
        return "Tanzanian Shilling";
      case "UAH":
        return "Ukrainian Hryvnia";
      case "UGX":
        return "Ugandan Shilling";
      case "UYU":
        return "Uruguayan Peso";
      case "UZS":
        return "Uzbekistan Som";
      case "VES":
        return "Venezuelan Bolívar";
      case "VND":
        return "Vietnamese Dong";
      case "VUV":
        return "Vanuatu Vatu";
      case "WST":
        return "Samoan Tala";
      case "XAF":
        return "Central African CFA Franc";
      case "XDR":
        return "Special Drawing Rights";
      case "XOF":
        return "West African CFA Franc";
      case "XPF":
        return "CFP Franc";
      case "YER":
        return "Yemeni Rial";
      case "ZAR":
        return "South African Rand";
      case "ZMW":
        return "Zambian Kwacha";
      case "ZWL":
        return "Zimbabwean Dollar";
      case "USD":
      default:
        return "US Dollar";
    }
  }

  String getCurrencySymbol() {
    switch (getIso4217Code()) {
      case "AED":
        return "د.إ";
      case "AFN":
        return "؋";
      case "ALL":
        return "L";
      case "AMD":
        return "֏";
      case "ANG":
        return "ƒ";
      case "AOA":
        return "Kz";
      case "XCD":
        return "\$";
      case "ARS":
        return "\$";
      case "AUD":
        return "\$";
      case "AWG":
        return "Afl.";
      case "AZN":
        return "₼";
      case "BAM":
        return "KM";
      case "BBD":
        return "\$";
      case "BDT":
        return "৳";
      case "BGN":
        return "лв";
      case "BHD":
        return "BD";
      case "BIF":
        return "FBu";
      case "BMD":
        return "\$";
      case "BND":
        return "\$";
      case "BOB":
        return "Bs";
      case "BRL":
        return "R\$";
      case "BSD":
        return "\$";
      case "BTN":
        return "Nu.";
      case "BWP":
        return "P";
      case "BYN":
        return "Br";
      case "BZD":
        return "\$";
      case "CAD":
        return "\$";
      case "CDF":
        return "FC";
      case "CHF":
        return "CHF";
      case "CLP":
        return "\$";
      case "CNY":
        return "¥";
      case "COP":
        return "\$";
      case "CRC":
        return "₡";
      case "CUP":
        return "\$";
      case "CVE":
        return "CVE";
      case "CZK":
        return "Kč";
      case "DJF":
        return "Fdj";
      case "DKK":
        return "kr";
      case "DOP":
        return "RD\$";
      case "DZD":
        return "د.ج";
      case "EGP":
        return "E£";
      case "ERN":
        return "Nfk";
      case "ETB":
        return "ETB";
      case "EUR":
        return "€";
      case "GBP":
        return "£";
      case "FJD":
        return "\$";
      case "FKP":
        return "£";
      case "FOK":
        return "kr";
      case "GEL":
        return "₾";
      case "GGP":
        return "£";
      case "GHS":
        return "GH₵";
      case "GIP":
        return "£";
      case "GMD":
        return "D";
      case "GNF":
        return "FG";
      case "GTQ":
        return "Q";
      case "GYD":
        return "\$";
      case "HKD":
        return "\$";
      case "HNL":
        return "L";
      case "HRK":
        return "kn";
      case "HTG":
        return "G";
      case "HUF":
        return "Ft";
      case "IDR":
        return "Rp";
      case "ILS":
        return "₪";
      case "IMP":
        return "£";
      case "INR":
        return "₹";
      case "IQD":
        return "ع.د";
      case "IRR":
        return "﷼";
      case "ISK":
        return "kr";
      case "JEP":
        return "£";
      case "JMD":
        return "\$";
      case "JOD":
        return "JD";
      case "JPY":
        return "¥";
      case "KES":
        return "KSh";
      case "KGS":
        return "сом";
      case "KHR":
        return "៛";
      case "KID":
        return "\$";
      case "KMF":
        return "CF";
      case "KRW":
        return "₩";
      case "KWD":
        return "د.ك";
      case "KYD":
        return "\$";
      case "KZT":
        return "₸";
      case "LAK":
        return "₭";
      case "LBP":
        return "L£";
      case "LKR":
        return "රු";
      case "LRD":
        return "\$";
      case "LSL":
        return "L";
      case "LYD":
        return "LD";
      case "MAD":
        return "د.م.";
      case "MDL":
        return "MDL";
      case "MGA":
        return "Ar";
      case "MKD":
        return "ден";
      case "MMK":
        return "K";
      case "MNT":
        return "₮";
      case "MOP":
        return "MOP\$";
      case "MRU":
        return "UM";
      case "MUR":
        return "₨";
      case "MVR":
        return "Rf";
      case "MWK":
        return "MK";
      case "MXN":
        return "\$";
      case "MYR":
        return "RM";
      case "MZN":
        return "MT";
      case "NAD":
        return "\$";
      case "NGN":
        return "₦";
      case "NIO":
        return "C\$";
      case "NOK":
        return "kr";
      case "NPR":
        return "रू";
      case "NZD":
        return "\$";
      case "OMR":
        return "ر.ع.";
      case "PAB":
        return "B/.";
      case "PEN":
        return "S/.";
      case "PGK":
        return "K";
      case "PHP":
        return "₱";
      case "PKR":
        return "₨";
      case "PLN":
        return "zł";
      case "PYG":
        return "₲";
      case "QAR":
        return "ر.ق";
      case "RON":
        return "lei";
      case "RSD":
        return "дин";
      case "RUB":
        return "\u20BD";
      case "RWF":
        return "FRw";
      case "SAR":
        return "ر.س";
      case "SBD":
        return "\$";
      case "SCR":
        return "₨";
      case "SDG":
        return "SDG";
      case "SEK":
        return "kr";
      case "SGD":
        return "\$";
      case "SHP":
        return "£";
      case "SLL":
        return "Le";
      case "SOS":
        return "S";
      case "SRD":
        return "\$";
      case "SSP":
        return "£";
      case "STN":
        return "Db";
      case "SVC":
        return "\$";
      case "SYP":
        return "SYP";
      case "SZL":
        return "E";
      case "THB":
        return "฿";
      case "TJS":
        return "ЅМ";
      case "TMT":
        return "T";
      case "TND":
        return "د.ت";
      case "TOP":
        return "T\$";
      case "TRY":
        return "₺";
      case "TTD":
        return "\$";
      case "TVD":
        return "\$";
      case "TWD":
        return "NT\$";
      case "TZS":
        return "TSh";
      case "UAH":
        return "₴";
      case "UGX":
        return "USh";
      case "UYU":
        return "\$U";
      case "UZS":
        return "so'm";
      case "VES":
        return "Bs.S.";
      case "VND":
        return "₫";
      case "VUV":
        return "VT";
      case "WST":
        return "WS\$";
      case "XAF":
        return "FCFA";
      case "XDR":
        return "SDR";
      case "XOF":
        return "CFA";
      case "XPF":
        return "₣";
      case "YER":
        return "YER";
      case "ZAR":
        return "R";
      case "ZMW":
        return "ZK";
      case "ZWL":
        return "Z\$";
      case "USD":
      default:
        return "\$";
    }
  }

  // For saving to shared prefs
  String getId() => currency.name;
}
