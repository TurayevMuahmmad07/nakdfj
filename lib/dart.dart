import 'package:flutter/material.dart';
import 'package:helloworld/tab/HomePage.dart';
import 'package:helloworld/tab/Uzcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueAccent,
          // ignore: prefer_const_constructors
          title: Text(
            'My cards',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(

            tabs:const [
              Text('Все карты',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

              Text('uzcard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              Text('humo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17))

            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Main(),
            Uzcard(),
            Card()
          ],
        ),
        ),
    );
  }
}
