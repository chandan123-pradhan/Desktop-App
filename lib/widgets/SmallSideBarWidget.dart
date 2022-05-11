import 'package:desktop_app/utils/Color.dart';
import 'package:desktop_app/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

class SmallSideBarWidget extends StatefulWidget {
  const SmallSideBarWidget({ Key? key }) : super(key: key);

  @override
  State<SmallSideBarWidget> createState() => _SmallSideBarWidgetState();
}

class _SmallSideBarWidgetState extends State<SmallSideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
      const SizedBox(height:20),
listWidget(
  Icon(Icons.create_new_folder_outlined,color:Colors.white,size:25  ),
  "Create Card",
  (){}
  ),
const SizedBox(height:20),
listWidget(
  Icon(Icons.list,color:Colors.white,size:25  ),
  "Card List",
  (){}
  ),
const SizedBox(height:20),
listWidget(
  Icon(Icons.air_outlined,color:Colors.white,size:25  ),
  
  "Terms & Conditions",
  
  (){}),
const SizedBox(height:20),
listWidget(
  Icon(Icons.align_vertical_center,color:Colors.white,size:25  ),
  "FAQ",
  (){}
  ),
const SizedBox(height:20),
listWidget(
Icon(Icons.person_pin,color:Colors.white,size:25  ),
"About Us",
(){}),
const SizedBox(height:20),
listWidget(
  Icon(Icons.power_settings_new_rounded,color:Colors.white,size:25  ),
  "Logout",
  (){})
      
      
      
        ],
        
      ),
    );
  }

Widget listWidget(Widget icon, text,Function onPress){
  return Bounce(
onPressed: (){
onPress();
},
duration:(Duration(milliseconds: 110)),
  
    child: MouseRegion(
        cursor: SystemMouseCursors.click,
      child: Container(
      width: Get.width/1,
      alignment: Alignment.centerLeft,
      child:Padding(
        padding: const EdgeInsets.only(left:10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
    
          children: [
            icon,
            
          
          ],
        ),
      ),
    ),
    ),
  );
}


}