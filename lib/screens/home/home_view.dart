import 'package:ayotrash/localization/app_translations.dart';
import 'package:ayotrash/screens/home/widgets/feeds_card.dart';
import 'package:ayotrash/screens/home/widgets/report_card.dart';
import 'package:ayotrash/screens/home/widgets/subscribe_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFAFAFA),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
          child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Color(0xFFFAFAFA),
              automaticallyImplyLeading: false,
              title: GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/Profile"),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/arsyad.jpg")),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${AppTranslations.of(context).text("title_home")}, Arsyad",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xFF2f3542)),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () => Navigator.pushNamed(context, "/Reward"),
                  textColor: Color(0xFFFE9923),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset("assets/ayopoint_logo.png"),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "20 ${AppTranslations.of(context).text("point")}",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10)
              ],
            )
          ];
        },
        body: ListView(
            padding: EdgeInsets.only(top: 20),
            shrinkWrap: true,
            children: <Widget>[
              !subscribe ? SubscribeCard() : ReportCard(trashTaken: trashTaken),
              Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 15, right: 25, bottom: 18),
                child: Row(
                  children: <Widget>[
                    Text(
                      "${AppTranslations.of(context).text("about_title")} ",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: Image.asset("assets/ayotrash_text_5x.png"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4), width: 1)),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/save.png"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "${AppTranslations.of(context).text("what_is")} ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22,
                                          child: Image.asset(
                                              "assets/ayotrash_text_5x.png"),
                                        ),
                                        Text(
                                          " ?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Flexible(
                                        child: RichText(
                                      text: new TextSpan(
                                        text: '${AppTranslations.of(context).text("ayotrash_subtitle_part1")}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF2f3542)),
                                        children: [
                                          new TextSpan(
                                              text: ' ayotrash',
                                              style: new TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          new TextSpan(
                                              text:
                                                  '. ${AppTranslations.of(context).text("ayotrash_subtitle_part2")}.'),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.4), width: 1)),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset("assets/ayopoint_logo.png"),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "${AppTranslations.of(context).text("what_is")} ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22,
                                          child: Image.asset(
                                              "assets/ayopoint_text_5x.png"),
                                        ),
                                        Text(
                                          " ?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Flexible(
                                        child: RichText(
                                      text: new TextSpan(
                                        text: '${AppTranslations.of(context).text("ayopoint_subtitle_part1")}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF2f3542)),
                                        children: [
                                          new TextSpan(
                                              text: ' ayopoint',
                                              style: new TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          new TextSpan(
                                              text:
                                                  '. ${AppTranslations.of(context).text("ayotrash_subtitle_part2")}.'),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 15, right: 25, bottom: 12),
                child: Text(
                  "${AppTranslations.of(context).text("blog_feed_title")}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: feeds.length,
                  itemBuilder: (context, i) {
                    return FeedsCard(
                        image: "${feeds[i]['image']}",
                        title: "${feeds[i]['title']}",
                        detail: "${feeds[i]['detail']}");
                  },
                ),
              ),
              SizedBox(height: 20)
            ]),
      )),
    );
  }
}
