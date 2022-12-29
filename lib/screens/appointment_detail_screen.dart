import 'package:flutter/material.dart';

class AppointmentDetail extends StatelessWidget {
  const AppointmentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final String customer =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      body: Text(customer),
    );
  }
}
