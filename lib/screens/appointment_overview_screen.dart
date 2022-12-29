import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/appointment_item.dart';
import '../data/dummy_data.dart';
import '../models/appointment.dart';

class AppointmentOverviewScreen extends StatefulWidget {
  const AppointmentOverviewScreen({super.key});

  @override
  State<AppointmentOverviewScreen> createState() => _AppointmentOverviewScreenState();
}

class _AppointmentOverviewScreenState extends State<AppointmentOverviewScreen> {
  final List<Appointment> loadedAppointments = dummyAppointments;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: TableCalendar(
            firstDay: DateTime.utc(2022, 01, 01),
            lastDay: DateTime.utc(2023, 31, 12),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              // Use `selectedDayPredicate` to determine which day is currently selected.
              // If this returns true, then `day` will be marked as selected.

              // Using `isSameDay` is recommended to disregard
              // the time-part of compared DateTime objects.
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                // Call `setState()` when updating the selected day
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: loadedAppointments.length,
            itemBuilder: (context, index) =>
                AppointmentItem(appointment: loadedAppointments[index]),
          ),
        )
      ],
    );
  }
}
