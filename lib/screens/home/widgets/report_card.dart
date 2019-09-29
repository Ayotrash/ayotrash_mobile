import 'package:ayotrash/screens/home/widgets/invitation_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportCard extends StatefulWidget {
  final bool trashTaken;

  ReportCard({this.trashTaken});

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  static DateTime now = DateTime.now();
  String formattedDate = DateFormat('EEEE, d MMM y').format(now);

  Widget buildTrashTaken() {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10),
              SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                      "assets/${widget.trashTaken ? 'trash_success.png' : 'trash_not_yet.png'}")),
              SizedBox(width: 15),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hari ini ($formattedDate)",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF747d8c)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    !widget.trashTaken
                        ? Text(
                            "Sampah hari ini belum diambil.",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2f3542)),
                          )
                        : Text(
                            "Sampah sudah diambil pada jam 08:19",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2ed573)),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl:
                    "https://arcadiadesignarc.com/wp-content/uploads/2018/10/Keren-Desain-Rumah-Minimalis-Masa-Kini-63-Dalam-Rumah-Merancang-Inspirasi-untuk-Desain-Rumah-Minimalis-Masa-Kini-.jpg",
                imageBuilder: (context, imageProvider) => Container(
                  width: screenSize.width,
                  height: 180,
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
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
                        Colors.grey[800],
                        Colors.transparent,
                      ],
                    ),
                  )),
                ),
                placeholder: (context, url) => Container(
                  width: screenSize.width,
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
                top: 30,
                left: 30,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTRMSaEe9lkqLe9302uvVK1o3s1vEqJK_6Uo9Kj1bFtmX8hDEgA",
                      imageBuilder: (context, imageProvider) => CircleAvatar(
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
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Petugas",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          Text("Azerino Gatots",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 25,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF2ed573)),
                    child: Icon(Icons.check, size: 20, color: Colors.white),
                  ))
            ],
          ),
        ),
        OutlineButton(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0xFF5352ed),
          borderSide: BorderSide(color: Color(0xFF5352ed)),
          textColor: Color(0xFF5352ed),
          onPressed: () => Navigator.pushNamed(context, "/Report"),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.assignment_turned_in,
                size: 20,
              ),
              SizedBox(width: 7),
              Text(
                "Lihat Semua Laporan",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCard() {
    final screenSize = MediaQuery.of(context).size;
    return Container(
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 50,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Jl. Lembah Palem IV no 332, Kavling DKI. Pondok Kelapa. Duren Sawit, Jakarta Timur. DKI Jakarta",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Rumah pager item. Ada anjing herder.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1,
                ),
                buildTrashTaken()
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[buildCard(), InvitationCard()],
    );
  }
}
