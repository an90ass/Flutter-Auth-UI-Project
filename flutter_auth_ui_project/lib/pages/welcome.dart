// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,  //  يجيبه في السنتر تبع الحدود تبع الكولومومن تبعه لذلك ماينفعالا لو دخلنا الكولومن داخل كونتينر وخلينا الكونتينر على مساحه الشاشه واقدر اغير الكونتينر ب سايزدبوكس دام وانا بستخدم العرض بس
                  children: [
                    
                    Container( // to use margin i can do it with SizedBox
                      margin: EdgeInsets.fromLTRB(0, 22, 0, 22),
                      child: Text("Wellcome",style: TextStyle(fontSize: 33,fontFamily: "myfont",fontWeight: FontWeight.bold),)
                      ),

                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                    ),
                      SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 24,color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                      ),
                    ),
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
