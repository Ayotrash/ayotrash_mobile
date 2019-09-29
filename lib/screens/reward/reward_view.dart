import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './reward_view_model.dart';

class RewardView extends RewardViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0.0),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.transparent,
          ),
          Container(
            width: screenSize.width,
            height: 200,
            color: Color(0xFFff7f50),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 30,
                    child: Image.asset("assets/ayopoint_text_10x.png"),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius:
                            8.0, // has the effect of softening the shadow
                        spreadRadius:
                            0.0, // has the effect of extending the shadow
                        offset: Offset(
                          0.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset("assets/arsyad.jpg")),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            "assets/ayopoint_logo.png"),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "20 point",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 22,
                                            color: Color(0xFFFE9923)),
                                      ),
                                    ]),
                                    SizedBox(height: 3),
                                    Text(
                                      "Point berlaku hingga 20 Sept 2020",
                                      style:
                                          TextStyle(color: Color(0xFF2f3542)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: OutlineButton(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color(0xFFFE9923),
                                borderSide:
                                    BorderSide(color: Color(0xFFFE9923)),
                                textColor: Color(0xFFFE9923),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.history,
                                      size: 20,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "History pemakaian point",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
