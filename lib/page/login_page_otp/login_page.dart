import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_signin_button/button_builder.dart';
import '../../signinbutton/signinbutton.dart';
import 'otp_page.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  TextEditingController countryController = TextEditingController();
  bool isPhoneNumberValid = false;

  @override
  void initState() {
    countryController.text = "+84";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/logo1.png", height: 270, width: 300,),
                SizedBox(height: 30),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Text("|", style: TextStyle(fontSize: 33, color: Colors.grey)),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            setState(() {
                              isPhoneNumberValid = value.length >= 9 && value.length <= 10;
                            });
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nhập số diện thoại",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isPhoneNumberValid ? Colors.orange : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: isPhoneNumberValid
                        ? () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOtpPage()));
                          }
                        : null,
                    child: Text("Đăng nhập", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(height: 20),
                Divider(),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: 400,
                  child: SignInButtonBuilder(
                    image: Image.asset("assets/images/apple.jpg", height: 40, width: 25,),
                    text: "Tiếp tục bằng Apple",
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black),
                    ), 
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: 400,
                  child: SignInButtonBuilder(
                    image: Image.asset("assets/images/facebook.png", height: 35, width: 20,),
                    text: "Tiếp tục bằng Facebook",
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.blue),
                    ), 
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 45,
                  width: 400,
                  child: SignInButtonBuilder(
                    image: Image.asset("assets/images/google.png", height: 30, width: 20,),
                    text: "Tiếp tục bằng Google",
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black),
                    ), 
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 20,
                  child: Text("Tiếng việt", style: TextStyle(fontSize: 16, color: Colors.black,),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
