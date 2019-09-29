import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WithdrawCard extends StatelessWidget {
  final String image, name, type;
  final int point;

  WithdrawCard({this.image, this.name, this.type, this.point});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: "$image",
            imageBuilder: (context, imageProvider) => Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.white,
                  // border:
                  //     Border.all(width: 0.5, color: Colors.grey),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 2.1],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Colors.black45,
                      Colors.black12,
                    ],
                  ),
                ),
              ),
            ),
            placeholder: (context, url) => Container(
              width: 150,
              height: 150,
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
          SizedBox(width: 15),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Color(0xFF2f3542),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "$type",
                    style: TextStyle(
                        color: Color(0xFF2f3542),
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                        height: 15,
                        child: Image.asset("assets/ayopoint_logo.png"),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "$point ",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Color(0xFFFE9923)),
                      ),
                      Text(
                        "points",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFE9923)),
                      ),
                    ],
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
