import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './fill_account_view_model.dart';

class FillAccountView extends FillAccountViewModel {
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
      child: ListView(
        padding: EdgeInsets.only(top: 20, right: 10, left: 10),
        children: <Widget>[
          Container(
            width: screenSize.width,
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
                      left: 15, right: 15, top: 2, bottom: 15),
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
                                    fontWeight: FontWeight.w700, fontSize: 16),
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
                    ],
                  ),
                )),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFced6e0)),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              "Unggah Foto",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF57606f)),
            ),
          ),
          SizedBox(height: 30),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "Nama Depan",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "Nama Belakang",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.alternate_email,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.phone_iphone,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "No Handphone",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFEAEEF1),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2F3542),
                  fontWeight: FontWeight.w500,
                ),
                // controller: controller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFced6e0),
                  icon: Icon(
                    Icons.lock,
                    color: Color(0xFF9D9D9D),
                    size: 25,
                  ),
                  hintText: "Ulang Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              )),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              Checkbox(
                activeColor: Color(0xFF2ed573),
                value: terms,
                onChanged: (bool value) {
                  setState(() {
                    terms = value;
                  });
                },
              ),
              Flexible(
                  child: RichText(
                text: new TextSpan(
                  text: 'Anda bersedia menerima',
                  style: TextStyle(fontSize: 13, color: Color(0xFF2f3542)),
                  children: <TextSpan>[
                    new TextSpan(
                        text: ' syarat dan ketentuan ',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                    new TextSpan(text: 'dari kami.'),
                  ],
                ),
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: screenSize.width - 100,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () => Navigator.pushNamed(context, "/CheckLocation"),
                color: Color(0xFF2ed573),
                textColor: Colors.white,
                child: Text(
                  "Daftar Sekarang",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
