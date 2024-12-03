import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spider/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return HomeBodyScreen(

      name: name,
    );
  }
}
