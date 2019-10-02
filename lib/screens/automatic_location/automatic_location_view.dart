import 'package:ayotrash/localization/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:loading/indicator/line_scale_pulse_out_indicator.dart';
import 'package:loading/loading.dart';
import './automatic_location_view_model.dart';

class AutomaticLocationView extends AutomaticLocationViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));

    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: screenSize.width,
            height: screenSize.height,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: kGooglePlex,
              onMapCreated: (GoogleMapController theController) {
                controller.complete(theController);
              },
              markers: Set<Marker>.of(markers.values),
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Colors.transparent,
          ),
          AnimatedOpacity(
              opacity: loading ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
                color: Colors.green.withOpacity(0.7),
                child: Center(
                    child: Loading(
                        indicator: LineScalePulseOutIndicator(), size: 100.0)),
              )),
          AnimatedPositioned(
            bottom: hide ? -360 : 0,
            left: 0,
            right: 0,
            duration: Duration(milliseconds: 250),
            child: AnimatedOpacity(
              opacity: loading ? 0.0 : 1.0,
              duration: Duration(milliseconds: 250),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10, right: 15),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius:
                                  8.0, // has the effect of softening the shadow
                              spreadRadius:
                                  2.0, // has the effect of extending the shadow
                              offset: Offset(
                                0.0, // horizontal, move right 10
                                0.0, // vertical, move down 10
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () => hideSeek(),
                        child: hide
                            ? Icon(Icons.arrow_upward)
                            : Icon(Icons.arrow_downward),
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(minHeight: 350),
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius:
                                8.0, // has the effect of softening the shadow
                            spreadRadius:
                                5.0, // has the effect of extending the shadow
                            offset: Offset(
                              0.0, // horizontal, move right 10
                              4.0, // vertical, move down 10
                            ),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 12, 15, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 60,
                                width: 60,
                                child: Image.asset("assets/worldwide.png"),
                              ),
                              SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  "${AppTranslations.of(context).text("title_auto_loc")}",
                                  style: TextStyle(
                                      color: Color(0xFF2f3542),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 15, right: 15, bottom: 10),
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEAEEF1),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF2F3542),
                                  fontWeight: FontWeight.w500,
                                ),
                                // controller: controller,
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFced6e0),
                                  icon: Icon(
                                    Icons.location_on,
                                    color: Color(0xFF9D9D9D),
                                    size: 25,
                                  ),
                                  hintText:
                                      "${AppTranslations.of(context).text("text_field_address")}",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF9D9D9D),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: InputBorder.none,
                                ),
                              )),
                        ),
                        // SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 30),
                            Text(
                                "${AppTranslations.of(context).text("sub_address")}")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 15, right: 15, bottom: 10),
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFEAEEF1),
                              ),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF2F3542),
                                  fontWeight: FontWeight.w500,
                                ),
                                // controller: controller,
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFced6e0),
                                  icon: Icon(
                                    Icons.description,
                                    color: Color(0xFF9D9D9D),
                                    size: 25,
                                  ),
                                  hintText:
                                      "${AppTranslations.of(context).text("text_field_detail")}",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF9D9D9D),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: InputBorder.none,
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 30),
                            Text(
                                "${AppTranslations.of(context).text("sub_detail")}")
                          ],
                        ),
                        SizedBox(height: 25),
                        Center(
                          child: Container(
                            width: screenSize.width - 150,
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () => Navigator.pushReplacementNamed(
                                  context, "/FillAccount"),
                              color: Color(0xFF2ed573),
                              textColor: Colors.white,
                              child: Text(
                                "${AppTranslations.of(context).text("btn_next")}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: screenSize.width - 150,
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              onPressed: () {},
                              textColor: Color(0xFF1e90ff),
                              child: Text(
                                "${AppTranslations.of(context).text("btn_help")}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
