import 'package:flutter/material.dart';
import 'package:todo_list/pages/home.dart';
import 'package:todo_list/pages/main_scrn.dart';
import 'package:todo_list/utils/colors.dart';
import 'package:todo_list/utils/const.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScrn(),
        '/todo': (context) => const Home(),
      },
    ));
