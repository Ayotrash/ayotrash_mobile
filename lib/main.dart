import 'package:ayotrash/routes.dart';
import 'package:ayotrash/screens/sign/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;

Future main() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  // Store<AppState> _store = await createStore();
  // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  // AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  // print(androidInfo.version.baseOS);
  // print(androidInfo.version.codename);
  // print(androidInfo.version.incremental);
  // print(androidInfo.version.previewSdkInt);
  // print(androidInfo.version.release);
  // print(androidInfo.version.sdkInt);
  // print(androidInfo.version.securityPatch);
  // print(androidInfo.bootloader);
  // print(androidInfo.brand);
  // print(androidInfo.device);
  // print(androidInfo.display);
  // print(androidInfo.fingerprint);
  // print(androidInfo.board);
  // print(androidInfo.hardware);
  // print(androidInfo.host);
  // print(androidInfo.id);
  // print(androidInfo.manufacturer);
  // print(androidInfo.model);
  // print(androidInfo.product);
  // print(androidInfo.supported32BitAbis);
  // print(androidInfo.supported64BitAbis);
  // print(androidInfo.supportedAbis);
  // print(androidInfo.tags);
  // print(androidInfo.type);
  // print(androidInfo.isPhysicalDevice);
  // print(androidInfo.androidId);

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
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
      localizationsDelegates: const [
        location_picker.S.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('id', ''),
      ],
      home: Sign(),
      routes: routes,
    );
  }
}
