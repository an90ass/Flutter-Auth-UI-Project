// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 200,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 111,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //  يجيبه في السنتر تبع الحدود تبع الكولومومن تبعه لذلك ماينفعالا لو دخلنا الكولومن داخل كونتينر وخلينا الكونتينر على مساحه الشاشه واقدر اغير الكونتينر ب سايزدبوكس دام وانا بستخدم العرض بس
                  children: [
                    Container(
                        // to use margin i can do it with SizedBox
                        margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
                        child: Text(
                          "Login",
                          style: TextStyle(
                               color: Colors.grey[800],
                              fontSize: 33,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.bold),
                        )),
                    SvgPicture.asset(
                      "assets/icons/login.svg",
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                   
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                 
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 106, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 24,color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, "/signup" );},
                          child: Text(" Sign up",style: TextStyle(fontWeight: FontWeight.w700),))
                      ],
                    )
                  ],
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
