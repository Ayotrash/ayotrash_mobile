import 'package:ayotrash/screens/reward/widgets/games_card.dart';
import 'package:ayotrash/screens/reward/widgets/withdraw_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: screenSize.width,
                    height: 200,
                    color: Color(0xFFff7f50),
                    // margin: EdgeInsets.only(bottom: 150),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                                "assets/arsyad.jpg")),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                              "20 points",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 22,
                                                  color: Color(0xFFFE9923)),
                                            ),
                                          ]),
                                          SizedBox(height: 3),
                                          Text(
                                            "Point berlaku hingga 20 Sept 2020",
                                            style: TextStyle(
                                                color: Color(0xFF2f3542)),
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
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      color: Color(0xFFFE9923),
                                      borderSide:
                                          BorderSide(color: Color(0xFFFE9923)),
                                      textColor: Color(0xFFFE9923),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Icon(
                                            Icons.history,
                                            size: 20,
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            "History pemakaian points",
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
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Quiz & Challenge",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Kumpulkan point lebih banyak dengan mengikuti kuis dan tantangan dari kami.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 280,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GamesCard(
                        name: "Arks Survival Evolved",
                        point: 250,
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTm3ici804gOOMkzuorUZ6kjIAqQu8ZiF03PAZfNmlXbzZH4UPU",
                      ),
                      GamesCard(
                        name: "Titanfall 2",
                        point: 750,
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSi0anyxdrsDaq6k9AinPBs4L-9eYMwKl2vVcm4g3e3h5H8MfvY",
                      ),
                      GamesCard(
                        name: "Playerunknown's Battleground",
                        point: 1250,
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRZCAvoEG7cCTMe76qCphzzhnQwX9ByCAb2578HvXFOYYnCiNEL",
                      ),
                    ])),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Tukarkan points",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Tukarkan point yang anda miliki disini.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            WithdrawCard(
              name: "Apple Iphone 11 Pro Max",
              type: "Smartphone",
              point: 150000,
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRsGiQ-fLhfNdloQ2fjcHPQc2DX59H0ohQIb5035IRMK2J09Jb_",
            ),
            WithdrawCard(
              name: "2% Saham Bank CIMBNIAGA",
              type: "Gadget",
              point: 550000,
              image:
                  "https://www.99.co/blog/indonesia/wp-content/uploads/2019/02/Untitled-6-9.jpg",
            ),
            WithdrawCard(
              name: "Apple Macbook Pro with Touch Bar",
              type: "Laptop",
              point: 250000,
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRlYQZ1oh8UqTuWZxUoyFc1aZNgLvk1CaXdynv42XTfjK0OaV0A",
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
