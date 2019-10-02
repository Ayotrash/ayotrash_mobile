import 'package:ayotrash/localization/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './check_location_view_model.dart';

class CheckLocationView extends CheckLocationViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFAFAFA),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: screenSize.width / 2,
              height: screenSize.width / 2,
              child: Image.asset("assets/map.png"),
            ),
            SizedBox(height: 25),
            Text(
              "${AppTranslations.of(context).text("title_check_loc")}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(height: 35),
            Container(
              width: screenSize.width - 100,
              child: OutlineButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Color(0xFF1e90ff),
                // splashColor: Color(0xFF1e90ff),
                borderSide: BorderSide(color: Color(0xFF1e90ff)),
                textColor: Color(0xFF1e90ff),
                onPressed: () => Navigator.pushNamed(context, "/AutoLocation"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF1e90ff),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${AppTranslations.of(context).text("btn_auto_check")}",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "${AppTranslations.of(context).text("or")}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),
            Container(
              width: screenSize.width - 100,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () => checkManually(),
                textColor: Color(0xFF1e90ff),
                child: Text(
                  "${AppTranslations.of(context).text("btn_manual_check")}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
