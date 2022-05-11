import 'package:desktop_app/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';


class AddUser extends StatefulWidget {
  const AddUser({ Key? key }) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return  Container(
     
      child: Column(
          children: [
           // const SizedBox(height: 20,),
            Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,20),
                child: Container(
                  height: Get.height/1.2,
                  decoration: BoxDecoration(
                        color: AppColors.whiteColors,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),

child: Padding(
  padding: const EdgeInsets.all(20),
  child:   Column(
  
      children:[
  
        Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
  
            Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("Customer Name",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                  const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'Customer Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor:Colors.transparent,
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
              ],
  
            )
  
          ,Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                              Container(
                  width: Get.width/10,
                  child: Text("Mobile Number",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                 const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'Mobile Number',
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
              ],
  
            )
  
         
         
          ],
  
        )
  ,SizedBox(height:30),
   Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
  
            Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("Email",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                  const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
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
                          fillColor:Colors.transparent,
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
              ],
  
            )
  
          ,Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("City",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                 const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'City',
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
              ],
  
            )
  
         
         
          ],
  
        ),
        SizedBox(height:30),
        Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
  
            Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("State",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                  const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'State',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor:Colors.transparent,
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
              ],
  
            )
  
          ,Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("Trangaction ID",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                 const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'Trangaction ID',
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
              ],
  
            )
  
         
         
          ],
  
        ),
        SizedBox(height:30),
        Row(
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
  
            Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("Country",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                  const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'Country',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor:Colors.transparent,
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
              ],
  
            )
  
          ,Row(
  
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: Get.width/10,
                  child: const Text("Active Plan",style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                          fontWeight:FontWeight.w500
                        )),
                ),
                 const SizedBox(width:20),
                      Container(
                      width: Get.width / 4,
                      height: 40,
                      padding: EdgeInsets.zero,
                      child: const TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
                          hintText: 'Active Plan',
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
              ],
  
            )
  
         
         
          ],
  
        )
  
 , Expanded(
   child: Container(
     alignment: Alignment.bottomRight,
     child: Bounce(
      
      duration: (const Duration(milliseconds: 110)),
      onPressed: (){
        //Get.offAll(const Home());
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
        
                         child:const Text("Submit",
        
                         style:TextStyle(
        
                              color:Colors.white,
        
                              fontSize:18,
        
                              fontWeight:FontWeight.w600
        
                            )
        
                         
        
                         )
        
                         
        
                          ),
      ),
 ),
   ),
 ),

  
   
   
      ]
  
  ),
),


                      
                ),
              ),
            
          ],
        
      ),
    );
  }
}