
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,required this.onPressed, this.backgroundColor, required this.child,required this.width, });
  final void Function() onPressed;
  final Color? backgroundColor;
  final  Widget child;
  final double width;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(color: Colors.red),
          ),
        ),
        child: child,
      ),
    );
  }
}
