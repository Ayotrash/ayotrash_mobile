import 'package:ayotrash/localization/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './sign_view_model.dart';

class SignView extends SignViewModel {
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
        child: Stack(
          children: <Widget>[
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppTranslations.of(context).text("motto1_part1"),
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    AppTranslations.of(context).text("motto1_part2"),
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
                        "${AppTranslations.of(context).text("welcome")} ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        "ayotrash",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                    ],
                  ),
                  Text(
                    "${AppTranslations.of(context).text("motto2_part1")}",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text(
                    "${AppTranslations.of(context).text("motto2_part2")}",
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
                        "${AppTranslations.of(context).text("btn_register")}",
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
                      onPressed: () {
                        hideSeekLayer1();
                      },
                      textColor: Color(0xFF2ed573),
                      child: Text(
                        "${AppTranslations.of(context).text("btn_login")}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            layer1
                ? GestureDetector(
                    onTap: () => cancelAll(),
                    child: Container(
                      width: screenSize.width,
                      height: screenSize.height,
                      color: Colors.white.withOpacity(0.8),
                    ))
                : Container(),
            AnimatedPositioned(
              bottom: !layer1 ? -400 : -10,
              right: 0,
              duration: Duration(milliseconds: 350),
              child: Container(
                  constraints: BoxConstraints(minHeight: 280),
                  width: screenSize.width - 30,
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius:
                              8.0, // has the effect of softening the shadow
                          spreadRadius:
                              5.0, // has the effect of extending the shadow
                          offset: Offset(
                            0.0, // horizontcancelAll()al, move right 10
                            4.0, // vertical, move down 10
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text(
                          "${AppTranslations.of(context).text("login")}",
                          style: TextStyle(
                              color: Color(0xFF2f3542),
                              fontWeight: FontWeight.w700,
                              fontSize: 25),
                        ),
                        SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
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
                              controller: emailController,
                              decoration: InputDecoration(
                                fillColor: Color(0xFFced6e0),
                                icon: Icon(
                                  Icons.alternate_email,
                                  color: Color(0xFF9D9D9D),
                                  size: 25,
                                ),
                                hintText:
                                    "${AppTranslations.of(context).text("email")}",
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
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
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
                              obscureText: true,
                              controller: passwordController,
                              decoration: InputDecoration(
                                fillColor: Color(0xFFced6e0),
                                icon: Icon(
                                  Icons.lock,
                                  color: Color(0xFF9D9D9D),
                                  size: 25,
                                ),
                                hintText:
                                    "${AppTranslations.of(context).text("password")}",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF9D9D9D),
                                  fontWeight: FontWeight.w500,
                                ),
                                border: InputBorder.none,
                              ),
                            )),
                        SizedBox(height: 20),
                        Container(
                          width: screenSize.width,
                          child: RaisedButton(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () => Navigator.pushNamed(context, "/Home"),
                            color: emailController.text.length > 0 &&
                                    passwordController.text.length > 0
                                ? Color(0xFF2ed573)
                                : Colors.grey.withOpacity(0.8),
                            textColor: Colors.white,
                            child: Text(
                              "${AppTranslations.of(context).text("btn_next").toUpperCase()}",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ])),
            ),
            // AnimatedPositioned(
            //     bottom: !layer2 ? -400 : -20,
            //     right: 0,
            //     duration: Duration(milliseconds: 350),
            //     child: Container(
            //         width: screenSize.width - 30,
            //         constraints: BoxConstraints(minHeight: 280),
            //         margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            //         padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
            //         decoration: BoxDecoration(
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Colors.grey.withOpacity(0.6),
            //                 blurRadius:
            //                     8.0, // has the effect of softening the shadow
            //                 spreadRadius:
            //                     5.0, // has the effect of extending the shadow
            //                 offset: Offset(
            //                   0.0, // horizontal, move right 10
            //                   4.0, // vertical, move down 10
            //                 ),
            //               )
            //             ],
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10)),
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           // crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             SizedBox(height: 5),
            //             Text(
            //               "Sign In",
            //               style: TextStyle(
            //                   color: Color(0xFF2f3542),
            //                   fontWeight: FontWeight.w700,
            //                   fontSize: 25),
            //             ),
            //             SizedBox(height: 5),
            //             Text(
            //               "By signing up you agree to our Terms and Privacy Policy",
            //               style: TextStyle(
            //                   color: Color(0xFF2f3542),
            //                   fontWeight: FontWeight.w400,
            //                   fontSize: 13),
            //             ),
            //             SizedBox(height: 25),
            //             Container(
            //               height: 40,
            //               decoration: BoxDecoration(
            //                   color: Color(0xFF5A8CFE),
            //                   borderRadius: BorderRadius.circular(20)),
            //               child: FlatButton(
            //                 onPressed: () => signInFacebook(),
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)),
            //                 textColor: Colors.white,
            //                 child: Row(
            //                   children: <Widget>[
            //                     SizedBox(
            //                       height: 20,
            //                       child:
            //                           Image.asset("assets/facebook-icon.png"),
            //                     ),
            //                     Expanded(
            //                       child: Center(
            //                         child: Text(
            //                           "CONTINUE WITH FACEBOOK",
            //                           style: TextStyle(
            //                               letterSpacing: 1,
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(height: 10),
            //             Container(
            //               height: 40,
            //               decoration: BoxDecoration(
            //                   color: Color(0xFFFF6377),
            //                   borderRadius: BorderRadius.circular(20)),
            //               child: FlatButton(
            //                 onPressed: () => signInGoogle(),
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)),
            //                 textColor: Colors.white,
            //                 child: Row(
            //                   children: <Widget>[
            //                     SizedBox(
            //                       height: 20,
            //                       child: Image.asset("assets/google-icon.png"),
            //                     ),
            //                     Expanded(
            //                       child: Center(
            //                         child: Text(
            //                           "CONTINUE WITH GOOGLE",
            //                           style: TextStyle(
            //                               letterSpacing: 1,
            //                               fontSize: 15,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(height: 10),
            //             Container(
            //               height: 40,
            //               width: screenSize.width,
            //               decoration: BoxDecoration(
            //                   // color: Color(0xFFf2f2f2),
            //                   borderRadius: BorderRadius.circular(20)),
            //               child: OutlineButton(
            //                 onPressed: () => hideSeekLayer2(),
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)),
            //                 textColor: Color(0xFF2f3542),
            //                 highlightedBorderColor: Color(0xFF2f3542),
            //                 child: Text(
            //                   "REGULAR EMAIL",
            //                   style: TextStyle(
            //                       letterSpacing: 1,
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         )))
          ],
        ),
      ),
    );
  }
}
