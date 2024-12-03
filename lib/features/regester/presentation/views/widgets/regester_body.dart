import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spider/core/utiles/shared/global_text.dart';
import 'package:spider/features/login/presentation/views/login_screen.dart';

import '../../../../../core/utiles/shared/custom_elevated_button.dart';
import '../../../../../core/utiles/shared/custom_text_form_field.dart';
import '../../../../home/presentation/views/home_screen.dart';

class RegesterBody extends StatefulWidget {
  RegesterBody ({super.key});

  @override
  State<RegesterBody> createState() => _RegesterBodyState();
}
class _RegesterBodyState extends State<RegesterBody> {
  bool checkboxValue = false;
  TextEditingController email=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController repeat_pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        child: CustomScrollView(
         slivers: [
           SliverToBoxAdapter(
             child:Container(
               decoration: const BoxDecoration(
                 color: Colors.black,
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(35),
                   bottomRight: Radius.circular(35),
                 ),
               ),
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(13.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         GText(color: Colors.white, content: "Let’s", fontSize: 30,),
                         GText(color: Colors.white, content: "Create", fontSize: 40,fontWeight: FontWeight.bold,),
                         GText(color: Colors.white, content: "Yoour", fontSize: 40,fontWeight: FontWeight.bold),
                         GText(color: Colors.white, content: "Account", fontSize: 40,fontWeight: FontWeight.bold)
                       ],
                     ),
                   ),
                   Spacer(),
                   Padding(padding: EdgeInsets.all(13),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       IconButton(onPressed: (){
                         Navigator.pop(context);
                       }, icon: Icon(Icons.cancel,color: Colors.white,)),
                       SizedBox(height: 180,)
                     ],
                   ),
                   )
                 ],
               ),
             ),
           ),
           const SliverToBoxAdapter(child: SizedBox(height: 30)),
           SliverToBoxAdapter(
             child: CustomTextFormField(
               textstylecolor: Colors.black,
               hintText: 'Full Name',
               controller: name,
               fillColor: Colors.white,
               prefix: Icon(Icons.person, color: Colors.grey),
             ),
           ),
           const SliverToBoxAdapter(child: SizedBox(height: 20)),
           SliverToBoxAdapter(
             child: CustomTextFormField(
               textstylecolor: Colors.black,
               hintText: 'Email Adress',
               controller: email,
               fillColor: Colors.white,
               prefix: Icon(Icons.email, color: Colors.grey),
             ),
           ),
           const SliverToBoxAdapter(child: SizedBox(height: 20)),
           SliverToBoxAdapter(
             child: CustomTextFormField(
               textstylecolor: Colors.black,
               hintText: ' Password',
               controller: pass,
               fillColor: Colors.white,
               prefix: Icon(Icons.lock, color: Colors.grey),
             ),
           ),
           const SliverToBoxAdapter(child: SizedBox(height: 20)),
           SliverToBoxAdapter(
             child: CustomTextFormField(
               textstylecolor: Colors.black,
               hintText: 'repeat password',
               controller: repeat_pass,
               fillColor: Colors.white,
               prefix: Icon(Icons.person, color: Colors.grey,),
             ),
           ),
           SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Row(
                 children: [
                 Checkbox(value: checkboxValue, onChanged: (value) {
                   setState(() {
                     checkboxValue=!checkboxValue;
                   });
                 },
                 ),
                   GText(color: Colors.grey, content: "i agree to the ", fontSize: 15),
                   GText(color: Colors.black, content: "terms privacy", fontSize: 20),
               ],),
             ),
           ),
           SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.all(30),
               child: CustomElevatedButton(
                 onPressed: () {
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(
                       name: name.text,
                     ),));
                   });
                 },
                 width: MediaQuery.sizeOf(context).width*0.8,
                 child: const Text(
                   "Sign up",
                   style: TextStyle(color: Colors.white, fontSize: 18),
                 ),
               ),
             ),
           ),
           SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.only(left: 22.0),
               child: GestureDetector(
                   child: GText(color: Colors.black, content: "Have an account? Signin", fontSize: 15),
                 onTap: (){
                     setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                     });
                 },

               ),
             ),
           )

        ],
        ),
      ),
    );
  }
}
