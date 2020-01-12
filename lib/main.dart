import 'package:flutter/material.dart';
import 'custom_bottombar.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      // 自定义主题
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: CustomBottomBar(),

    );
  }
}
