import 'dart:async';

import 'package:assignment_2/welcome_page.dart';
import 'package:flutter/material.dart';

class  SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 1500 ),(){
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => WelcomePage(),
         )
        );
       }
     );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffcc80),
      body: Center(
          child: SizedBox(
              height: 90,
              width: 90,
              child: Image.asset("assets/icons/open-book.png")
          )
      ),
    );
  }

}