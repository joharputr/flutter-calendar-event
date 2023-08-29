import 'package:calendar2/calendar_example.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

import 'calendar_view_model.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(ChangeNotifierProvider(
    create: (context) => CalendarViewModel(),
    child: MyApp(),
  )));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CalendarExample(),
      ),
    );
  }
}
