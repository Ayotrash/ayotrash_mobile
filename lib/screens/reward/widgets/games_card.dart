import 'package:ayotrash/localization/app_translations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GamesCard extends StatelessWidget {
  final String image, name;
  final int point;

  GamesCard({this.image, this.name, this.point});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        //   width: 1,
        //   color: Colors.grey.withOpacity(0.5),
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: "$image",
                imageBuilder: (context, imageProvider) => Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover)),
                  child: Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.1, 2.1],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.grey[300],
                        Colors.transparent,
                      ],
                    ),
                  )),
                ),
                placeholder: (context, url) => Container(
                  width: 300,
                  height: 180,
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                      child: Image.asset("assets/ayopoint_logo_5x.png"),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${name.length > 20 ? '${name.substring(0, 19)}...' : name}",
                      style: TextStyle(
                          color: Color(0xFF2f3542),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                          height: 15,
                          child: Image.asset("assets/ayopoint_logo.png"),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "+$point ",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Color(0xFFFE9923)),
                        ),
                        Text(
                          "${AppTranslations.of(context).text("point")}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFFFE9923)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              OutlineButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color(0xFF5352ed),
                borderSide: BorderSide(color: Color(0xFF5352ed)),
                textColor: Color(0xFF5352ed),
                onPressed: () => Navigator.pushNamed(context, "/Report"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.games,
                      size: 20,
                    ),
                    SizedBox(width: 7),
                    Text(
                      "${AppTranslations.of(context).text("play")}",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
