// Copyright (c) 2021 Teerasej Jiraphatchandej
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
    );
  }
}
