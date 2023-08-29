import 'package:calendar2/calendar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarExample extends StatefulWidget {
  const CalendarExample({Key? key}) : super(key: key);

  @override
  State<CalendarExample> createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  @override
  void initState() {
    super.initState();

    Provider.of<CalendarViewModel>(context, listen: false).parseJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Consumer<CalendarViewModel>(builder: (context, value, child) {
          Future.delayed(Duration(seconds: 2), () {

          });
          return TableCalendar<int>(
            firstDay: value.kFirstDay,
            lastDay: value.kLastDay,
            focusedDay: value.focusedDay,
            eventLoader: value.getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              // Use `CalendarStyle` to customize the UI
              outsideDaysVisible: false,

            ),

            onPageChanged: (focusedDay) {
              value.focusedDay = focusedDay;
            },
          );
        }),
      ),
    );
  }
}
