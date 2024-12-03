
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spider/features/home/presentation/views/home_screen.dart';
import 'package:spider/features/regester/presentation/views/regester_screen.dart';
import '../../../../../core/utiles/app_images.dart';
import '../../../../../core/utiles/shared/custom_elevated_button.dart';
import '../../../../../core/utiles/shared/custom_text_form_field.dart';
import '../../../../../core/utiles/shared/global_text.dart';
class LoginBody extends StatefulWidget {
   LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 33),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.only(right: 20, top: 5),
                        child: Image.asset(
                          AppImages.logo,
                          height: 600,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: SizedBox(
                          child: GText(color: Colors.red, content:  "spiders", fontSize: 36, fontWeight: FontWeight.bold , textAlign: TextAlign.center,))) ,// App Title
                ]
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),


          // Subtitle
          const SliverToBoxAdapter(
            child: Text(
              "SECURITY APP",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 2,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
           SliverToBoxAdapter(
            child: CustomTextFormField(
              textstylecolor: Colors.white,
              controller: email,
              hintText: 'Email or Phone',
              prefix: Icon(Icons.email, color: Colors.grey),
            ),
          ),
          // Email/Phone TextField
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          // Password TextField
           SliverToBoxAdapter(
            child: CustomTextFormField(
              textstylecolor: Colors.white,
              hintText: 'Password',
              controller: pass,
              obscureText: true,
              prefix: Icon(Icons.lock, color: Colors.grey),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(
                            name: "Mahmoud",
                          ),));
                    },
                    width: MediaQuery.sizeOf(context).width*0.8,
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),

                  ),
                  // Login Button

                  const SizedBox(height: 10),

                  // Or ext
                  const Text(
                    "or",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    width: MediaQuery.sizeOf(context).width*0.8,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegesterScreen(),));
                    },
                    child: const Text(
                      "Create an account",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}