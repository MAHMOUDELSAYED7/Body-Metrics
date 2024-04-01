// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BMI Calculator`
  String get title {
    return Intl.message(
      'BMI Calculator',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get height {
    return Intl.message(
      'Height',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `cm`
  String get cm {
    return Intl.message(
      'cm',
      name: 'cm',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kg {
    return Intl.message(
      'kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `Let's Go`
  String get letsGo {
    return Intl.message(
      'Let\'s Go',
      name: 'letsGo',
      desc: '',
      args: [],
    );
  }

  /// `Find Out More`
  String get findOutMore {
    return Intl.message(
      'Find Out More',
      name: 'findOutMore',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Your BMI is`
  String get yourBmiIs {
    return Intl.message(
      'Your BMI is',
      name: 'yourBmiIs',
      desc: '',
      args: [],
    );
  }

  /// `Obese`
  String get obese {
    return Intl.message(
      'Obese',
      name: 'obese',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get normal {
    return Intl.message(
      'Normal',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `Underweight`
  String get underweight {
    return Intl.message(
      'Underweight',
      name: 'underweight',
      desc: '',
      args: [],
    );
  }

  /// `Overweight`
  String get overweight {
    return Intl.message(
      'Overweight',
      name: 'overweight',
      desc: '',
      args: [],
    );
  }

  /// `You have a normal body weight. Good job!`
  String get normalMessage {
    return Intl.message(
      'You have a normal body weight. Good job!',
      name: 'normalMessage',
      desc: '',
      args: [],
    );
  }

  /// `You have a higher than normal body weight. Try to exercise more.`
  String get obeseMessage {
    return Intl.message(
      'You have a higher than normal body weight. Try to exercise more.',
      name: 'obeseMessage',
      desc: '',
      args: [],
    );
  }

  /// `You have a lower than normal body weight. Try to exercise more.`
  String get underweightMessage {
    return Intl.message(
      'You have a lower than normal body weight. Try to exercise more.',
      name: 'underweightMessage',
      desc: '',
      args: [],
    );
  }

  /// `You have a higher than normal body weight. Try to exercise more.`
  String get overweightMessage {
    return Intl.message(
      'You have a higher than normal body weight. Try to exercise more.',
      name: 'overweightMessage',
      desc: '',
      args: [],
    );
  }

  /// `The normal BMI range is 18.5 - 24.9 kg/m2.`
  String get normalRanage {
    return Intl.message(
      'The normal BMI range is 18.5 - 24.9 kg/m2.',
      name: 'normalRanage',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
