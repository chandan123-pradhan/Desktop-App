

import 'package:desktop_app/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

Widget SideBarListWidget(Widget icon, text,Function onPress,isSelected,bool isSmall){
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
            SizedBox(width:10),
            isSmall==true?Container():Text(text,style: TextStyle(color:
            isSelected==true?AppColors.PrimaryColor:AppColors.whiteColors,fontSize:15,
            
            fontWeight:FontWeight.w500
            
            ),),
          ],
        ),
      ),
    ),
    ),
  );
}


