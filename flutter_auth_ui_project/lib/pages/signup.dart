// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
                  width: 200,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 90,
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
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.grey[800],
                              fontSize: 33,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.bold),
                        )),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 255,
                      height: 222,
                    ),
                    SizedBox(
                      height: 20,
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
                      height: 20,
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
                        "Sign up",
                        style: TextStyle(fontSize: 24,color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text("Already have an account? "),
                       GestureDetector(
                          onTap: (){Navigator.pushNamed(context, "/login" );},
                          child: Text(" Login ",style: TextStyle(fontWeight: FontWeight.w700),))
                      ],
                    ),
                      SizedBox(
                      height: 15,
                    ),
                  SizedBox(

                    width: 300,
                    child: Row(
                         children: [
                          Expanded(child: Divider(thickness: 0.5,color: Colors.purple[900],)),
                          Text("OR",style: TextStyle(color: Colors.purple[900]),),
                            Expanded(child: Divider(thickness: 0.5,color: Colors.purple[900],)),
                         ],
                       ),
                  ),


                     Container(
              margin: EdgeInsets.fromLTRB(0,30, 0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                   GestureDetector(
                    onTap: (){},
                     child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:  Colors.purple , width: 1 )
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        color: Colors.purple[700],
                        height: 27,
                      ),
                                       ),
                   ),
                
                
                  SizedBox(width: 22,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:  Colors.purple , width: 1 )
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        color: Colors.purple[700],
                        height: 27,
                      ),
                    ),
                  ),
                  SizedBox(width: 22,),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:  Colors.purple , width: 1 )
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        color: Colors.purple[700],
                        height: 27,
                      ),
                    ),
                  ),
                
                
                ],
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