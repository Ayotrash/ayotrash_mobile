import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './profile_view_model.dart';

class ProfileView extends ProfileViewModel {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFAFAFA),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFAFAFA),
        systemNavigationBarIconBrightness: Brightness.dark));
    final screenSize = MediaQuery.of(context).size;
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
            actions: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {},
                textColor: Color(0xFF2f3542),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings),
                    SizedBox(width: 5),
                    Text(
                      "Pengaturan",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/arsyad.jpg")),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFf1f2f6)),
                      child: Icon(
                        Icons.camera_alt,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 15),
                Text(
                  "Arsyad Ramadhan",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color(0xFF2f3542),
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.mode_edit, size: 20)
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("assets/ayopoint_logo.png"),
                ),
                SizedBox(width: 5),
                Text(
                  "20 points",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Color(0xFFFE9923),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: screenSize.width,
              margin: EdgeInsets.symmetric(horizontal: 10),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 2, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xFF1e90ff),
                                  size: 22,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Alamat Kamu",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              textColor: Color(0xFF1e90ff),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.edit,
                                    size: 22,
                                  ),
                                  SizedBox(width: 5),
                                  Text("Ubah Alamat")
                                ],
                              ),
                            )
                          ],
                        ),
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
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                !subscribe
                                    ? Icon(Icons.info)
                                    : Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color(0xFF2ed573)),
                                        child: Icon(Icons.check,
                                            size: 15, color: Colors.white),
                                      ),
                                SizedBox(width: 7),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      !subscribe
                                          ? Text(
                                              "Belum berlangganan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            )
                                          : Text(
                                              "Sudah berlangganan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF2ed573)),
                                            ),
                                      subscribe
                                          ? Text(
                                              "Berakhir pada 21 Aug 2019",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey),
                                            )
                                          : Container()
                                    ],
                                  ),
                                )
                              ],
                            ),
                            !subscribe
                                ? FlatButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    onPressed: () {},
                                    textColor: Color(0xFF2ed573),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: Image.asset(
                                              "assets/lightning.png"),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          "Tambah Langganan",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : OutlineButton(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 12),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Color(0xFF5352ed),
                                    borderSide:
                                        BorderSide(color: Color(0xFF5352ed)),
                                    textColor: Color(0xFF5352ed),
                                    onPressed: () =>
                                        Navigator.pushNamed(context, "/Report"),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Icon(
                                          Icons.assignment_turned_in,
                                          size: 18,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Lihat Semua Laporan",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 20),
            Container(
              width: screenSize.width - 150,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () => {},
                color: Color(0xFF5352ed),
                textColor: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.add, size: 20),
                    SizedBox(width: 5),
                    Text(
                      "Tambah Tempat / Rumah",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: screenSize.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Akun",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: new TextSpan(
                      text: 'Alamat email',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xFF2f3542)),
                      children: [
                        new TextSpan(text: ' - '),
                        new TextSpan(
                            text: 'Terverifikasi',
                            style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1e90ff))),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "blacklistdark1987@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFF2f3542),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.mode_edit, size: 20)
                    ],
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: new TextSpan(
                      text: 'No. Handphone',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xFF2f3542)),
                      children: [
                        new TextSpan(text: ' - '),
                        new TextSpan(
                            text: 'Terverifikasi',
                            style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1e90ff))),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "+62 8121-2839-123",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFF2f3542),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.mode_edit, size: 20)
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Color(0xFF2f3542))),
                  SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "**************",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xFF2f3542),
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.mode_edit, size: 20)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: screenSize.width - 100,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () => {},
                color: Color(0xFF70a1ff),
                textColor: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.headset_mic, size: 20),
                    SizedBox(width: 5),
                    Text(
                      "Butuh bantuan?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
