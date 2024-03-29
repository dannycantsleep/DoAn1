import 'package:do_an/main_page.dart';
import 'package:do_an/page/login_page_otp/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// class MyWelcomePage extends StatelessWidget{
//   const MyWelcomePage({super.key});

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assets/images/logo.jpg', width: 200, height: 200,),
//       )
//     );
//   }
// }

class MyWelcomePage extends StatefulWidget{
  const MyWelcomePage({Key? key}): super(key: key);

  @override
  _MyWelcomPageState createState() => _MyWelcomPageState();
}

class _MyWelcomPageState extends State<MyWelcomePage>{
  @override
  void initState(){
    super.initState();
    //sử dụng Timer để chuyển sang trang MyHomePage sau 3 giây
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo1.png',),
      ),
    );
  }
}