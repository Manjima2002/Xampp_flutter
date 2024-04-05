import 'package:flutter/material.dart';

import 'Main_Page.dart';
import 'data_send_screen.dart';

var ip_address = '192.168.29.107';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Main_Page(),
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


