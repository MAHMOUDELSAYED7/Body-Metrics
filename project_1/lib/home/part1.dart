// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_single_cascade_in_expression_statements, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:project_1/pages/part2.dart';
import 'package:project_1/pages/part4.dart';

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
      routes: {
        'page4': (context) => myResult(),
        'page3': (context) => homepage(),
      },
    );
  }
}
