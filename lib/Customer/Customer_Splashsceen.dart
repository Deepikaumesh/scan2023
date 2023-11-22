import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'Customer_Dashboard.dart';
import 'Customer_Login.dart';





var Admin_key;

class Customer_Splashscreen extends StatefulWidget {
  _Customer_SplashscreenState createState() => _Customer_SplashscreenState();
}

class _Customer_SplashscreenState extends State<Customer_Splashscreen> {

  void initState() {
    getValidationData().whenComplete(() async {
      await Timer(Duration(seconds: 1), () {
        Admin_key == null
            ? Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Customer_Login()))
            : Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    Customer_Dashboard()));
      });
    });
    setState(() {

      Get_Id();

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
    var obtainedemail = await sharedprefs.getString('customer_id');
    setState(() {
      Admin_key = obtainedemail;
    });
    print('thisis service  value $Admin_key');
  }




  Get_Id() async {
    final SharedPreferences sharedprefs = await SharedPreferences.getInstance();
    var obtain_admin = await sharedprefs.getString('id');

    setState(() {});
    get_id = obtain_admin;
  }

}
