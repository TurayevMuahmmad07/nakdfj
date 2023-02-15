import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/tab/model/model.dart';

Widget ItemAll(BuildContext context, Model itemModel){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10),
    height: 300,
    width: MediaQuery.of(context).size.width*0.9,
    child: Stack(
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue,
          image: DecorationImage(image: AssetImage(itemModel.image,),fit:BoxFit.cover)
          ),

        ),
           Positioned(
           top: 25,
           left: 10,

           child: Text(itemModel.text,style: TextStyle(fontSize: 20,color: Colors.white),)),

        Positioned(
            bottom: 25,
            left: 10,

            child: Text(itemModel.count,style:const  TextStyle(fontSize: 20,color: Colors.white),)),
      ],
    ),
  );
}
