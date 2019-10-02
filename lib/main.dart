import 'package:ayotrash/routes.dart';
import 'package:ayotrash/screens/sign/sign.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:devicelocale/devicelocale.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ayotrash/localization/app_translations_delegate.dart';
import 'package:ayotrash/localization/application.dart';
import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;

Future main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  // Store<AppState> _store = await createStore();

  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  AppTranslationsDelegate _newLocaleDelegate;

  @override
  void initState() {
    super.initState();
    _newLocaleDelegate = AppTranslationsDelegate(newLocale: null);
    application.onLocaleChanged = onLocaleChange;
    // getLocate();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFAFAFA),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    return MaterialApp(
      title: 'Ayotrash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // platform: TargetPlatform.iOS,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Color(0xFF2F3542),
        ),
      ),
      localizationsDelegates: [
        _newLocaleDelegate,
        location_picker.S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: <Locale>[
        const Locale('en', ''),
        const Locale('id', ''),
      ],
      home: Sign(),
      routes: routes,
    );
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }

  // Future getLocate() async {
  //   List _languages = await Devicelocale.preferredLanguages;
  //   _newLocaleDelegate = AppTranslationsDelegate(newLocale: Locale('id'));
  // }
}
