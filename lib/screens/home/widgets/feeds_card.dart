import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeedsCard extends StatelessWidget {
  final String image, title, detail;

  FeedsCard({this.image, this.title, this.detail});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      width: 360,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
      child: Row(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: image,
            imageBuilder: (context, imageProvider) => Container(
              width: screenSize.width / 2.6,
              constraints: BoxConstraints(minHeight: 200),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover)),
            ),
            placeholder: (context, url) => Container(
              width: screenSize.width / 2.6,
              constraints: BoxConstraints(minHeight: 200),
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                    child: Image.asset("assets/ayotrash_logo_5x.png"),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "${title.length > 42 ? '${title.substring(0, 41)}...' : title}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF57606f),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${detail.length > 180 ? '${detail.substring(0, 179)}...' : detail}",
                    style: TextStyle(color: Color(0xFF57606f)),
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
