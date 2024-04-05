import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xampp_flutter/splashscreen.dart';
import 'Display_Data.dart';
import 'Display_Data_with_image.dart';
import 'Edit_Data_with_img.dart';
import 'Edit_data.dart';
import 'Send_Data_with_image.dart';
import 'data_send_screen.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => data_send_screen()));
                },
              child: Text("Send data"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Display_Data()));
              },
              child: Text("Display data"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Send_data_With_Image()));
              },
              child: Text("Send_data_with_image"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Display_Data_with_image()));
              },
              child: Text("Display_data_with_image"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Splashscreen()));
              },
              child: Text("Splashscreen"),
            ),









          ],
        ),
      ),
    );
  }
}
