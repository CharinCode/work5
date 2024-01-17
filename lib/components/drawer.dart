// ignore_for_file: prefer_const_constructors

import 'package:apiapp/page/login.dart';
import 'package:apiapp/page/newspage.dart';
import 'package:apiapp/page/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DrawerNav extends StatelessWidget {
  Color color;
  DrawerNav({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: color,
            ),
            child: Text(
              'Charin Phimathai',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Get.to(() => WelcomeScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('News'),
            onTap: () {
              Get.to(() => NewsPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Get.to(() => LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
