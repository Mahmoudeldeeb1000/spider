import 'package:flutter/material.dart';
import 'package:spider/core/utiles/app_images.dart';
import 'package:spider/features/login/presentation/views/wedgets/Login_body.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black ,
      body:LoginBody()
    );
  }
}
