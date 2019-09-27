import 'package:ayotrash/routes.dart';
import 'package:ayotrash/screens/sign/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  // Store<AppState> _store = await createStore();

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
      home: Sign(),
      routes: routes,
    );
  }
}
