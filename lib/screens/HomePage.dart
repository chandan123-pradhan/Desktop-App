import 'package:desktop_app/screens/AboutUs.dart';
import 'package:desktop_app/screens/AddUser.dart';
import 'package:desktop_app/screens/CardList.dart';
import 'package:desktop_app/screens/Faq.dart';
import 'package:desktop_app/screens/LoginPage.dart';
import 'package:desktop_app/screens/TermsAndConditions.dart';
import 'package:desktop_app/utils/Color.dart';
import 'package:desktop_app/utils/ImageUtils.dart';
import 'package:desktop_app/widgets/SideBarListWidget.dart';
import 'package:desktop_app/widgets/SmallSideBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSideBarEnable = true;
  String openTab='home';
  //bool addUserEnable=false;
  String filteredType='1';

  void changeFilteredType(type){
    setState(() {
      filteredType=type;
    });
    print(filteredType);
  }
  void changeSideBarStatus() {
    setState(() {
      isSideBarEnable = !isSideBarEnable;
    });
  }



_showPopupMenu(){
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(25.0, 25.0, 0.0, 0.0),      //position where you want to show the menu on screen
      items: [
        PopupMenuItem<String>(
            child: Text('Today',
            style: TextStyle(
              color:filteredType=='1'?AppColors.tinnyRedColor:Colors.black
            ),
            
            ), value: '1'),
        PopupMenuItem<String>(
            child: Text('Yesterday',
             style: TextStyle(
              color:filteredType=='2'?AppColors.tinnyRedColor:Colors.black)
            
            ), value: '2'),
        PopupMenuItem<String>(
            child: Text('Last 7 Days',
                style: TextStyle(
              color:filteredType=='3'?AppColors.tinnyRedColor:Colors.black)
          
            ), value: '3'),
        PopupMenuItem<String>(
            child: Text('Date Wise',
               style: TextStyle(
              color:filteredType=='4'?AppColors.tinnyRedColor:Colors.black)
          
            
            ), value: '4'),
        PopupMenuItem<String>(
            child: Text('Success',
               style: TextStyle(
              color:filteredType=='5'?AppColors.tinnyRedColor:Colors.black)
          
            
            ), value: '5'),
PopupMenuItem<String>(
            child:  Text('Faild',
            
               style: TextStyle(
              color:filteredType=='6'?AppColors.tinnyRedColor:Colors.black)
          
            ), value: '6'),
      ],
      elevation: 8.0,
    ).then((value) {
      changeFilteredType(value);
    });
    
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      body: Container(
        height: Get.height / 1,
        width: Get.width / 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         Container(
                    width: isSideBarEnable==true?Get.width / 5.5:80,
                    height: Get.height / 1,
                    decoration:
                        const BoxDecoration(color: AppColors.blueTextColor),
                    child: SideBarWidget(),
                  ),
                // : Container(
                //     width: 80,
                //     height: Get.height / 1,
                //     decoration:
                //         const BoxDecoration(color: AppColors.blueTextColor),
                //     child: SmallSideBarWidget(),
                //   ),
            Expanded(
                child: Container(
              height: Get.height / 1,
              child: Column(
                children: [
                  SizedBox(height: 20),
                 Container(
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Bounce(
                              onPressed: () {
                                changeSideBarStatus();
                              },
                              duration: (Duration(milliseconds: 110)),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: isSideBarEnable == true
                                    ? const Icon(Icons.menu,
                                        size: 25,
                                        color: AppColors.blueTextColor)
                                    : const Icon(Icons.format_list_bulleted,
                                        size: 25,
                                        color: AppColors.blueTextColor),
                              ),
                            ),
                           openTab=='home' || openTab=='cardList'? Bounce(
                              onPressed: () {

_showPopupMenu();



                              },
                              duration: (Duration(milliseconds: 110)),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                    width: 100,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.filter_list_rounded,
                                            size: 25,
                                            color: AppColors.blueTextColor,
                                          ),
                                          Text(
                                            "Filter",
                                            style: TextStyle(
                                                color: AppColors.blueTextColor,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ])),
                              ),
                            ):Container()
                          ]),
                    ),
                  ),
                  //SizedBox(height:20),
                  openTab=='home' || openTab=='cardList'?Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: listWidget(
                          'SL',
                          'Customer Name',
                          'Mobile Number',
                          'Email',
                          'City',
                          'State',
                          'Trangaction ID',
                          'Country',
                          'Active Plan',
                          'Action',
                          'header')):Container(),
                  SizedBox(height: 20),
                  Expanded(
                      child:  openTab=='add_user'?
                      AddUser():
                      openTab=='terms_conditions'?TermsAndConditions():
                      // openTab=='cardList'?CardList():
                      openTab=='faq'?Faq():
                      openTab=='about_us'?AboutUs():
                      ListView.builder(
                          itemCount: 10,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: listWidget(
                                  (index + 1).toString(),
                                  'Chandan Pradhan',
                                  '9065974832',
                                  'xyz@gmail.com',
                                  'Dumration',
                                  'Bihar',
                                  '1234',
                                  'India',
                                  '2 Month',
                                  '',
                                  'not_header'),
                            );
                          }))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget listWidget(id, name, mobileNumber, email, city, state, tran_id,
      country, active_plan, action, type) {
    return Container(
      //height:30,
      width: Get.width / 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: type == 'header' ? Colors.red[200] : Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 50,
                alignment: Alignment.centerLeft,
                child: textWidget(id, type)),
            Container(
                width: Get.width / 9,
                alignment: Alignment.centerLeft,
                child: textWidget(name, type)),
            Container(
                width: Get.width / 12,
                alignment: Alignment.centerLeft,
                child: textWidget(mobileNumber, type)),
            Container(
                width: Get.width / 11,
                alignment: Alignment.centerLeft,
                child: textWidget(email, type)),
            Container(
                width: Get.width / 15,
                alignment: Alignment.centerLeft,
                child: textWidget(city, type)),
            Container(
                width: Get.width / 15,
                alignment: Alignment.centerLeft,
                child: textWidget(state, type)),
            Container(
                width: Get.width / 12,
                alignment: Alignment.centerLeft,
                child: textWidget(tran_id, type)),
            Container(
                width: Get.width / 12,
                alignment: Alignment.centerLeft,
                child: textWidget(country, type)),
            Container(
                width: Get.width / 15,
                alignment: Alignment.centerLeft,
                child: textWidget(active_plan, type)),
            Container(
                width: Get.width / 18,
                alignment: Alignment.centerLeft,
                child: type == 'header'
                    ? textWidget(action, type)
                    : const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(Icons.edit,
                            size: 20, color: AppColors.PrimaryColor)))
          ],
        ),
      ),
    );
  }

  Widget textWidget(title, type) {
    return Text(
      title,
      style: TextStyle(
          color: type == 'header' ? Colors.white : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500),
    );
  }

  Widget SideBarWidget() {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         isSideBarEnable==true? Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Image.asset(ImageUtils.PROFILE_PIC, height: 100, width: 100),
          ):Container(),
          const Divider(height: 0.5, color: AppColors.BackgroundColor),
          const SizedBox(height: 20),
           SideBarListWidget(
              Icon(Icons.create_new_folder_outlined,
                 color:openTab=='home'?AppColors.PrimaryColor:Colors.white, size: 25),
              "Home", () {
                setState((){
                  openTab='home';
                 // addUserEnable=true;
                });
            // Get.to(AddUser());
          },
           openTab=='home'?true:false  ,
           isSideBarEnable==true?false:true
          ),
          const SizedBox(height: 20),
         
           SideBarListWidget(
                Icon(Icons.create_new_folder_outlined,
                    color:  openTab=='add_user'?AppColors.PrimaryColor:Colors.white, size: 25),
                "Add User", () {
                  setState((){
                     openTab='add_user';
                  });
               
              // Get.to(AddUser());
            },
             openTab=='add_user'?true:false,
             isSideBarEnable==true?false:true  
            ),
          
          const SizedBox(height: 20),
          SideBarListWidget(Icon(Icons.list, 
          
           color:openTab=='cardList'?AppColors.PrimaryColor:Colors.white,
          size: 25),
              "Card List", () {
                setState((){
                     openTab='cardList';
                  });
              },
               openTab=='cardList'?true:false ,
               isSideBarEnable==true?false:true 
              ),
          const SizedBox(height: 20),
          SideBarListWidget(
              Icon(Icons.air_outlined, color: 
              
              openTab=='terms_conditions'?AppColors.PrimaryColor:Colors.white,size: 25),
              "Terms & Conditions",
              () {
                setState((){
                     openTab='terms_conditions';
                  });
              },
               openTab=='terms_conditions'?true:false,
               isSideBarEnable==true?false:true  
              ),
          const SizedBox(height: 20),
          SideBarListWidget(
              Icon(Icons.align_vertical_center,
              color:openTab=='faq'?AppColors.PrimaryColor:Colors.white,
            
            size: 25),
              "FAQ",
              () {
                setState((){
                     openTab='faq';
                  });
              },
               openTab=='faq'?true:false  ,
               isSideBarEnable==true?false:true
              ),
          const SizedBox(height: 20),
          SideBarListWidget(
              Icon(Icons.person_pin, 
                color:openTab=='about_us'?AppColors.PrimaryColor:Colors.white,
              size: 25),
              "About Us",
              () {
                setState((){
                     openTab='about_us';
                  });
              },
               openTab=='about_us'?true:false,
               isSideBarEnable==true?false:true  
              ),
          const SizedBox(height: 20),
          SideBarListWidget(
              Icon(Icons.power_settings_new_rounded,
                  color: Colors.white, size: 25),
              "Logout",
              () {
                Get.offAll(Login());
              },
              false,
              isSideBarEnable==true?false:true
              )
        ],
      ),
    );
  }
}
