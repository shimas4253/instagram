import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
   Timer(Duration(seconds: 3),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login()));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Image(
                  image: AssetImage('asset/image/icon.png'),
                  width: 80,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: Column(
                  children: [
                    Text(
                      'from',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('asset/image/meta.png'),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    'meta',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
