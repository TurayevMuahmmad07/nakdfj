import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/tab/box/box.dart';
import 'package:helloworld/tab/float.dart';
import 'package:helloworld/tab/item/item.dart';
import 'package:helloworld/tab/model/model.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(
       child:ListView.builder(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           itemCount: model.length,
           itemBuilder: (context,index){
         return ItemAll(context,model[index]);
       })
     ),
floatingActionButton: FloatingActionButton(
   hoverColor: Colors.yellow,
    backgroundColor: Colors.blue,
    focusColor: Colors.greenAccent ,
    elevation: 0,
  onPressed: () {


  },
    child: Icon(Icons.add),
),

    );

  }
}
