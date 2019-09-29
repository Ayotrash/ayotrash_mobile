import 'package:ayotrash/screens/report/widgets/report_list.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './report_view_model.dart';

class ReportView extends ReportViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFFFFFF),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFFFFFF),
        systemNavigationBarIconBrightness: Brightness.dark));
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: screenSize.width,
                constraints: BoxConstraints(minHeight: 200),
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          4.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        3.0, // vertical, move down 10
                      ),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Semua Laporan",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color(0xFF2f3542)),
                          ),
                          SizedBox(height: 20),
                          Row(
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
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: screenSize.width - 100,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () => {},
                          color: Color(0xFF70a1ff),
                          textColor: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.today, size: 20),
                              SizedBox(width: 5),
                              Text(
                                "Cari berdasarkan tanggal",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
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
                            "assets/${trashTaken ? 'trash_success.png' : 'trash_not_yet.png'}")),
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
                          !trashTaken
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
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 20, bottom: 10),
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
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 20, bottom: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Petugas",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
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
                          child:
                              Icon(Icons.check, size: 20, color: Colors.white),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20),
              ReportList(
                  name: "Azerino Gatots",
                  image:
                      "https://arcadiadesignarc.com/wp-content/uploads/2018/10/Keren-Desain-Rumah-Minimalis-Masa-Kini-63-Dalam-Rumah-Merancang-Inspirasi-untuk-Desain-Rumah-Minimalis-Masa-Kini-.jpg",
                  date: "$formattedDate",
                  user:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTRMSaEe9lkqLe9302uvVK1o3s1vEqJK_6Uo9Kj1bFtmX8hDEgA",
                  time: "08.15"),
              ReportList(
                  name: "Azerino Gatots",
                  user:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTRMSaEe9lkqLe9302uvVK1o3s1vEqJK_6Uo9Kj1bFtmX8hDEgA",
                  image:
                      "https://arcadiadesignarc.com/wp-content/uploads/2018/10/Keren-Desain-Rumah-Minimalis-Masa-Kini-63-Dalam-Rumah-Merancang-Inspirasi-untuk-Desain-Rumah-Minimalis-Masa-Kini-.jpg",
                  date: "$formattedDate",
                  time: "08.15"),
              ReportList(
                  last: true,
                  name: "Azerino Gatots",
                  user:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTRMSaEe9lkqLe9302uvVK1o3s1vEqJK_6Uo9Kj1bFtmX8hDEgA",
                  image:
                      "https://arcadiadesignarc.com/wp-content/uploads/2018/10/Keren-Desain-Rumah-Minimalis-Masa-Kini-63-Dalam-Rumah-Merancang-Inspirasi-untuk-Desain-Rumah-Minimalis-Masa-Kini-.jpg",
                  date: "$formattedDate",
                  time: "08.15"),
            ],
          ),
        ),
      ),
    );
  }
}
