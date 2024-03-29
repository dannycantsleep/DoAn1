import 'package:flutter/material.dart';
import 'page/welcome_page.dart';
import '../main_page.dart';
import 'page/login_page_otp/login_page.dart';
import 'page/login_page_otp/otp_page.dart';
import 'page/mini_page/shop_address_page/shop_address_page_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyMainPage(),
    );
  }
}
