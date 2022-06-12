import 'dart:async';

import 'package:class_07/dashboard.dart';
import 'package:flutter/material.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
 @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3) , 
      ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          Dashboard())));
    
  }
  


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
           body: Text('Splash Screen'),
      ),
    );
  }
}