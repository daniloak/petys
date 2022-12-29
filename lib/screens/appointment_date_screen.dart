import 'package:flutter/material.dart';

class AppointmentDateScreen extends StatelessWidget {
  const AppointmentDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String customer =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [Text("Customer:"), Text(customer)],
          ),
        ],
      ),
    );
  }
}
