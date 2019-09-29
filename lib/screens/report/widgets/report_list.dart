import 'package:ayotrash/screens/report/widgets/showImage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ReportList extends StatelessWidget {
  final bool last;
  final String image, user, name, date, time;

  ReportList(
      {this.last: false,
      this.user,
      this.date,
      this.time,
      this.name,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                !last
                    ? Positioned(
                        top: 2,
                        left: 17.5,
                        child: Container(
                            width: 5,
                            constraints: BoxConstraints(minHeight: 100),
                            color: Color(0xFF2f3542)),
                      )
                    : Container(),
                Container(
                  width: 40,
                  constraints: BoxConstraints(minHeight: 100),
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF2f3542)),
                    child: Icon(Icons.check, size: 22, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                constraints: BoxConstraints(minHeight: 80),
                margin: EdgeInsets.only(bottom: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.4), width: 1)),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("$date - Diambil pada jam $time",
                            style: TextStyle(color: Colors.grey, fontSize: 13)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                CachedNetworkImage(
                                  imageUrl: "$user",
                                  imageBuilder: (context, imageProvider) =>
                                      CircleAvatar(
                                    backgroundImage: imageProvider,
                                  ),
                                  placeholder: (context, url) => CircleAvatar(
                                    child: Center(
                                      child: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Petugas",
                                          style: TextStyle(
                                              color: Color(0xFF57606f),
                                              fontSize: 13)),
                                      Text("$name",
                                          style: TextStyle(
                                              color: Color(0xFF57606f),
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) => ShowImage(
                                          image: image,
                                          date: date,
                                        )),
                              ),
                              textColor: Color(0xFF1e90ff),
                              child: Text(
                                "Lihat Foto Laporan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
