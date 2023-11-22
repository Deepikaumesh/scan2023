import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sannerapp_2023/Merchant/Merchant_Dashboard.dart';
import 'package:sannerapp_2023/Merchant/Merchant_Registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'Merchant_Login.dart';






var Merchant_key;

class Merchant_Splashscreen extends StatefulWidget {
  _Merchant_SplashscreenState createState() => _Merchant_SplashscreenState();
}

class _Merchant_SplashscreenState extends State<Merchant_Splashscreen> {

  void initState() {
    getValidationData().whenComplete(() async {
      await Timer(Duration(seconds: 1), () {
        Merchant_key == null
            ? Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Merchant_Login()))
            : Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Merchant_Dashboard()));
      });
    });
    setState(() {


    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Loading......",
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }


  Future getValidationData() async {
    final SharedPreferences sharedprefs = await SharedPreferences.getInstance();
    var obtainedemail = await sharedprefs.getString('merchant_id');
    setState(() {
      Merchant_key = obtainedemail;
    });

  }






}
