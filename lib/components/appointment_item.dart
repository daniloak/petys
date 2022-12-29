import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:petys/models/appointment.dart';

import '../app_routes.dart';

class AppointmentItem extends StatelessWidget {
  final Appointment appointment;

  const AppointmentItem({
    super.key,
    required this.appointment,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: ()=> Navigator.of(context).pushNamed(AppRoutes.appointments_detail_screen, arguments: appointment.clientFullName),
        child: ListTile(
          horizontalTitleGap: 0,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(DateFormat.jm().format(appointment.dateTime)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: VerticalDivider(
                  color: Colors.black,
                  indent: 10,
                  endIndent: 10,
                ),
              )
            ],
          ),
          title: Text(appointment.clientFullName),
        ),
      ),
    );
  }
}
