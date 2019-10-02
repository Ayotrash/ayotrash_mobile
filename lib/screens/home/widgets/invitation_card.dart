import 'package:ayotrash/localization/app_translations.dart';
import 'package:flutter/material.dart';

class InvitationCard extends StatefulWidget {
  @override
  _InvitationCardState createState() => _InvitationCardState();
}

class _InvitationCardState extends State<InvitationCard> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
          width: screenSize.width,
          decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  2.0, // vertical, move down 10
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset("assets/invite.png"),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: new TextSpan(
                                  text: '${AppTranslations.of(context).text("invite_title")}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF2f3542)),
                                  children: [
                                    new TextSpan(
                                        text: ' ayotrash',
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xFF2ed573))),
                                    new TextSpan(text: '.'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              RichText(
                                text: new TextSpan(
                                  text:
                                      '${AppTranslations.of(context).text("invite_subtitle")}',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF2f3542)),
                                  children: [
                                    new TextSpan(
                                        text: ' 20 ${AppTranslations.of(context).text("point")}',
                                        style: new TextStyle(
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xFFFE9923))),
                                    new TextSpan(text: '!'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              )),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Center(
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {},
              color: Color(0xFF2ed573),
              textColor: Colors.white,
              child: Text(
                "${AppTranslations.of(context).text("btn_invite")}",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
