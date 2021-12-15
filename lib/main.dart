import 'package:flutter/material.dart';
import 'screen/homepage.dart';
import 'screen/nav.dart';
import 'screen/viewproduct.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    HomeScreen(),
    ViewProduct(),
    Container(),
    Container(),
    Container()
  ];

  changePageIndex(int changedIndex){
    setState(() {
      currentPage = changedIndex;
    });
    print(currentPage);
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
      home: Scaffold(
        body: pages[currentPage],
        bottomNavigationBar: Nav(index: currentPage, changePageIndex: changePageIndex,),
      ),
      
    );
  }
}