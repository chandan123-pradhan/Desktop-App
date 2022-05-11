import 'package:desktop_app/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';


class CardList extends StatefulWidget {
  const CardList({ Key? key }) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
     
      child: Column(
          children: [
           // const SizedBox(height: 20,),
            Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,20),
                child: Container(
                  height: Get.height/1.12,
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
  child:   Container()

),


                      
                ),
              ),
            
          ],
        
      ),
    );
  }
}