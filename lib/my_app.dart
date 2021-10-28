// Copyright (c) 2021 Teerasej Jiraphatchandej
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Contact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
