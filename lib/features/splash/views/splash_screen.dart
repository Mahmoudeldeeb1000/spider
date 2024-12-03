
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:spider/features/login/presentation/views/login_screen.dart';
import 'package:spider/features/login/presentation/views/wedgets/Login_body.dart';

import '../../../core/utiles/app_images.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    super.initState();
    Future.delayed(Duration
      (
        seconds: 4
    ),
          () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
          return LoginScreen();

        }));

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Roulette(
                  child: Text("Spider",style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.bold),)),
              Roulette(
                child: Image.asset(AppImages.spider,

                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
