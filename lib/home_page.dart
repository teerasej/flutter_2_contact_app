// Copyright (c) 2021 Teerasej Jiraphatchandej
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_app/covid_stat_model.dart';
import 'package:http/http.dart';
import 'package:test_app/random_user_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Uri url =
      Uri.parse('https://covid19.ddc.moph.go.th/api/Cases/today-cases-all');

  Uri url2 =
      Uri.parse('https://randomuser.me/api/?results=50&inc=name,phone,picture');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19'),
      ),
      body: FutureBuilder(
        future: get(url2),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasError) {
            return const Text('oops...');
          }

          if (snapshot.connectionState == ConnectionState.done) {
            var response = snapshot.data;
            var json = response?.body as String;
            var model = randomUserModelFromJson(json);
            return Text('ok');
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
