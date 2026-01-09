import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_app/pages/home_page.dart';
import 'dart:async';

import 'package:netflix_app/pages/onbording_page.dart';


class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});

  

  final String title;


  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {

  void initState(){
    super.initState();
    loadAnimation();
  }
onLoaded(){
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) =>  OnbordingPage())
  );
}
 Future<Timer> loadAnimation() async{
  return Timer(const Duration(seconds: 4), onLoaded);

}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Colors.black,

      body: Center(
      
        child: Lottie.asset("assets/lotties/netflix.json",
        repeat: false
        )
      )
    );
  }
}