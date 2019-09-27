import 'package:flutter/material.dart';
import './sign_view_model.dart';

class SignView extends SignViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Kelola sampah dengan cara terbaik dari",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Text(
                "sebuah aplikasi",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: screenSize.width / 2,
                height: screenSize.width / 2,
                child: Image.asset("assets/tote-bag.png"),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Selamat datang di ",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    "ayotrash",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                ],
              ),
              Text(
                "Kontribusimu berdampak untuk dunia",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Text(
                "yang lebih baik",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(height: 30),
              Container(
                width: screenSize.width - 100,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () =>
                      Navigator.pushNamed(context, "/CheckLocation"),
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
              SizedBox(height: 10),
              Container(
                width: screenSize.width - 100,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {},
                  textColor: Color(0xFF2ed573),
                  child: Text(
                    "Sudah punya akun",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
