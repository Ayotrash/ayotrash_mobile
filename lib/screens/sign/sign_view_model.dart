import 'package:flutter/material.dart';
import './sign.dart';

abstract class SignViewModel extends State<Sign> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool layer1 = false;

  void cancelAll() {
    setState(() {
      layer1 = false;
    });
  }

  void hideSeekLayer1() {
    setState(() {
      layer1 = !layer1;
    });
  }

  void signInRegular() {}
}
