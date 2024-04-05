import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:shared_preferences/shared_preferences.dart';


import 'Display_Data.dart';
import 'Display_Data_with_image.dart';
import 'Send_Data_with_image.dart';
import 'data_send_screen.dart';
import 'login page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Logout"),
                // IconButton(
                //     onPressed: () async {
                //       final SharedPreferences sharedpreferences =
                //       await SharedPreferences.getInstance();
                //       sharedpreferences.remove('key');
                //       print('$key_value');
                //      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginpage()));
                //     },
                //     icon: Icon(Icons.exit_to_app)),
                IconButton(
                    onPressed: () async {
                      final SharedPreferences sharedpreferences =
                      await SharedPreferences.getInstance();
                      sharedpreferences.remove('id');
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginpage()));
                    },
                    icon: Icon(Icons.exit_to_app)),
              ],
            ),


          ],
        ),
      ),
    );
  }

  data_send_with_uid_screen() {}
}
