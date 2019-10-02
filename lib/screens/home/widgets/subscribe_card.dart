import 'package:ayotrash/localization/app_translations.dart';
import 'package:flutter/material.dart';

class SubscribeCard extends StatefulWidget {
  @override
  _SubscribeCardState createState() => _SubscribeCardState();
}

class _SubscribeCardState extends State<SubscribeCard> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: screenSize.width,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8.0, // has the effect of softening the shadow
            spreadRadius: 0.0, // has the effect of extending the shadow
            offset: Offset(
              0.0, // horizontal, move right 10
              0.0, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/trash.png"),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        "${AppTranslations.of(context).text("not_premium_title")}.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: screenSize.width - 100,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {},
                    color: Color(0xFF2ed573),
                    textColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/lightning.png"),
                        ),
                        Text(
                          "${AppTranslations.of(context).text("btn_subscribe")} ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ayotrash",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "*${AppTranslations.of(context).text("note_subscribe_part1")} ",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "${AppTranslations.of(context).text("note_subscribe_part2")}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          )),
    );
  }
}
