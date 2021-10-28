// Copyright (c) 2021 Teerasej Jiraphatchandej
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
    );
  }
}
