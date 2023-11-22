import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sannerapp_2023/Admin/Admin_Dashboard.dart';
import 'package:sannerapp_2023/Admin/Admin_Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';






var Admin_key;

class Admin_Splashscreen extends StatefulWidget {
  _Admin_SplashscreenState createState() => _Admin_SplashscreenState();
}

class _Admin_SplashscreenState extends State<Admin_Splashscreen> {

  void initState() {
    getValidationData().whenComplete(() async {
      await Timer(Duration(seconds: 1), () {
        Admin_key == null
            ? Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Admin_Login()))
            : Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Admin_Dashboard()));
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
    var obtainedemail = await sharedprefs.getString('Admin_id');
    setState(() {
      Admin_key = obtainedemail;
    });

  }





}
