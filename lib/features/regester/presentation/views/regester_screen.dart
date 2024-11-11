import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spider/features/regester/presentation/views/widgets/regester_body.dart';

class RegesterScreen extends StatelessWidget {
  const RegesterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegesterBody(),
    );
  }
}
