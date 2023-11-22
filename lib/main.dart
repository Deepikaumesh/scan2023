import 'package:flutter/material.dart';

import 'main_way.dart';


var ip_address = '192.168.29.64';

var get_id;
var access_total_amt ='';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Main_way(),
    );
  }
}

