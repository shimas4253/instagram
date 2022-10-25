import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/splash.dart';

void main(){
  runApp(home());
}
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),

    );
  }
}
