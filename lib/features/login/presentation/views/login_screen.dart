import 'package:flutter/material.dart';
import 'package:spider/core/utiles/app_images.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(

                    radius: 80,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20,top: 5),
                      child: Image.asset(AppImages.logo,height:600,fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 20),

                  // App Title
                  Text(
                    "spiders",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),

                  // Subtitle
                  Text(
                    "SECURITY APP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 30),

                  // Email/Phone TextField
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.grey),
                      hintText: 'Email or Phone',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),

                  // Password TextField
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),

                  // Forgot Password Text
                 Column(
                   children: [
                     Align(
                       alignment: Alignment.center,
                       child: TextButton(
                         onPressed: () {},
                         child: Text(
                           "Forgot Password?",
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     ),
                     SizedBox(height: 20),

                     // Login Button
                     ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.black,
                         padding: EdgeInsets.symmetric(vertical: 14, horizontal: 80),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12),
                           side: BorderSide(color: Colors.red),
                         ),
                       ),
                       child: Text(
                         "Login",
                         style: TextStyle(color: Colors.red, fontSize: 18),
                       ),
                     ),
                     SizedBox(height: 10),

                     // Or Text
                     Text(
                       "or",
                       style: TextStyle(color: Colors.grey, fontSize: 16),
                     ),
                     SizedBox(height: 10),

                     // Create Account Button
                     ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.black,
                         padding: EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12),
                           side: BorderSide(color: Colors.red),
                         ),
                       ),
                       child: Text(
                         "Create an account",
                         style: TextStyle(color: Colors.red, fontSize: 18),
                       ),
                     ),
                   ],
                 )
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
