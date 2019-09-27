import 'package:flutter/material.dart';
import './check_location_view_model.dart';

class CheckLocationView extends CheckLocationViewModel {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: screenSize.width / 2,
              height: screenSize.width / 2,
              child: Image.asset("assets/map.png"),
            ),
            SizedBox(height: 25),
            Text(
              "Kita cek lokasi kamu dulu ya",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(height: 35),
            Container(
              width: screenSize.width - 100,
              child: OutlineButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Color(0xFF1e90ff),
                // splashColor: Color(0xFF1e90ff),
                borderSide: BorderSide(color: Color(0xFF1e90ff)),
                textColor: Color(0xFF1e90ff),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color(0xFF1e90ff),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Kita cek lokasi kamu dulu ya",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "atau",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),
            Container(
              width: screenSize.width - 100,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {},
                textColor: Color(0xFF1e90ff),
                child: Text(
                  "Tambahkan lokasi secara manual",
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
    );
  }
}
