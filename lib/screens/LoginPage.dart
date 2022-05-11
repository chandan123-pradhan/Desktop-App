import 'package:desktop_app/screens/HomePage.dart';
import 'package:desktop_app/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.BackgroundColor,
        body: Center(
          child: Container(
              height: Get.height / 1.5,
              width: Get.width / 2.8,
              decoration: BoxDecoration(
                color: AppColors.whiteColors,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Container(
                    width: Get.width / 3.6,
                   // height: 40,
                    alignment: Alignment.centerLeft,
                    child:const Text("Email",style:TextStyle(
                      color:Colors.black,
                      fontSize:16,
                      fontWeight:FontWeight.w500
                    ))
                
                  ),
                  const SizedBox(height:10),
                  Container(
                    width: Get.width / 3.6,
                    height: 40,
                    padding: EdgeInsets.zero,
                    child: const TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                        hintText: 'Email address',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: AppColors.dividerColor, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: AppColors.dividerColor,width: 1),
                        ),
                      ),
                    ),
                  ),
const SizedBox(height:30),
//password field.


 Container(
                    width: Get.width / 3.6,
                   // height: 40,
                    alignment: Alignment.centerLeft,
                    child:const Text("Password",style:TextStyle(
                      color:Colors.black,
                      fontSize:16,
                      fontWeight:FontWeight.w500
                    ))
                
                  ),
                  const SizedBox(height:10),
                  
Container(
                    width: Get.width / 3.6,
                    height: 40,
                    padding: EdgeInsets.zero,
                    child: const TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: AppColors.dividerColor, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: AppColors.dividerColor,width: 1),
                        ),
                      ),
                    ),
                  ),
const SizedBox(height:40),
Bounce(
  
  duration: (const Duration(milliseconds: 110)),
  onPressed: (){
    Get.offAll(const Home());
  },
  child:   MouseRegion(
                                  cursor: SystemMouseCursors.click,
    child: Container(
    
                        width: Get.width / 5,
    
                        height: 40,
    
                     decoration: BoxDecoration(
    
                       borderRadius:BorderRadius.circular(5),
    
                       color: AppColors.PrimaryColor
    
                     ),   
    
                     alignment: Alignment.center,
    
                     child:Text("Login",
    
                     style:TextStyle(
    
                          color:Colors.white,
    
                          fontSize:18,
    
                          fontWeight:FontWeight.w600
    
                        )
    
                     
    
                     )
    
                     
    
                      ),
  ),
),



                ],
              )),
        ));
  }
}
